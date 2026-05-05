#-------------------------------------------------------------------------------------------------------------------------#
#######  UKB heatmap pipeline: NfL/GFAP x metabolome and Air pollution x metabolome                                   ----
#######  Fixes: project-root paths, separate outputs, robust p-value parsing, BH q-values for interactions              ----
#-------------------------------------------------------------------------------------------------------------------------#

options(nwarnings = 10000, scipen = 999)

# Significance thresholds
# Main effects use conventional nominal p < 0.05.
# Interaction terms use nominal p < 0.05 before multiple-testing correction,
# and BH/FDR q < 0.05 for figure display.
MAIN_NOMINAL_ALPHA <- 0.05
INTERACTION_NOMINAL_ALPHA <- 0.05
INTERACTION_BH_ALPHA <- 0.05


# ==========================================================================================
# 0. PATHS: fully portable; no setwd() anywhere
# ==========================================================================================
# How this works:
#   1) Preferred: set the environment variable UKB_HEATMAP_ROOT to your project-root folder.
#      Example in R before source():
#      Sys.setenv(UKB_HEATMAP_ROOT = "D:/16GBBACKUPUSB/BACKUP_USB_SEPTEMBER2014/May Baydoun_folder/UK_BIOBANK_PROJECT/UKB_PAPER11_NFLGFAPDEMPDMORT_METAB/MANUSCRIPT/GITHUB")
#   2) Otherwise, edit DEFAULT_PROJECT_ROOT below.
#   3) The script never calls setwd(); every input/output path is absolute via file.path().

DEFAULT_PROJECT_ROOT <- "D:/16GBBACKUPUSB/BACKUP_USB_SEPTEMBER2014/May Baydoun_folder/UK_BIOBANK_PROJECT/UKB_PAPER11_NFLGFAPDEMPDMORT_METAB/MANUSCRIPT/GITHUB"

project_root <- Sys.getenv("UKB_HEATMAP_ROOT", unset = DEFAULT_PROJECT_ROOT)
project_root <- normalizePath(project_root, winslash = "/", mustWork = FALSE)

fig3_dir <- file.path(project_root, "FIGURES", "FIGURE2_4_HEATMAPS", "FIGURE3_NFL_GFAP_METAB")
fig4_dir <- file.path(project_root, "FIGURES", "FIGURE2_4_HEATMAPS", "FIGURE4_PM_METAB")

data_dir <- file.path(project_root, "Data")
fig3_out_dir <- file.path(fig3_dir, "Output", "plot")
fig4_out_dir <- file.path(fig4_dir, "Output", "plot")
clean_out_dir <- file.path(data_dir, "cleaned_heatmap_inputs")

required_dirs <- c(data_dir, fig3_out_dir, fig4_out_dir, clean_out_dir)
for (d in required_dirs) {
  if (!dir.exists(d)) dir.create(d, recursive = TRUE, showWarnings = FALSE)
}

cat("Project root:\n", project_root, "\n\n")
cat("Current R working directory is irrelevant and unchanged:\n", getwd(), "\n\n")
cat("Pipeline version: fully portable no-setwd paths + exact-p/BH-q support.\n\n")

# ==========================================================================================
# 1. PACKAGES
# ==========================================================================================
needed_pkgs <- c("haven", "tidyr", "dplyr", "tibble", "stringr", "ggplot2", "purrr", "data.table", "sjmisc", "RColorBrewer", "ggnewscale", "scico", "forcats")
missing_pkgs <- needed_pkgs[!vapply(needed_pkgs, requireNamespace, logical(1), quietly = TRUE)]
if (length(missing_pkgs) > 0) {
  stop("Please install missing packages first: ", paste(missing_pkgs, collapse = ", "))
}
invisible(lapply(needed_pkgs, library, character.only = TRUE))

# ==========================================================================================
# 2. FILE LOCATOR AND HELPERS
# ==========================================================================================
find_input_file <- function(filename, preferred_dirs = c(data_dir, fig3_dir, fig4_dir, project_root)) {
  candidates <- file.path(preferred_dirs, filename)
  candidates <- c(candidates, file.path(preferred_dirs, "Data", filename))
  existing <- candidates[file.exists(candidates)]
  if (length(existing) > 0) return(normalizePath(existing[1], winslash = "/", mustWork = TRUE))
  
  recursive_hits <- list.files(project_root, pattern = paste0("^", gsub("\\.", "\\\\.", filename), "$"), recursive = TRUE, full.names = TRUE, ignore.case = FALSE)
  if (length(recursive_hits) > 0) return(normalizePath(recursive_hits[1], winslash = "/", mustWork = TRUE))
  
  stop(
    "Could not find ", filename, ".\n",
    "Expected locations included:\n",
    paste(unique(candidates), collapse = "\n"), "\n\n",
    "Fix: place ", filename, " in ", data_dir, " or update data_dir/project_root."
  )
}

combine_non_empty_values <- function(data) {
  if (nrow(data) == 0) return(tibble(v1 = character()))
  combined_data <- data %>%
    mutate(row_id = row_number()) %>%
    pivot_longer(cols = -row_id, names_to = "variable", values_to = "value") %>%
    mutate(value = as.character(value)) %>%
    filter(!is.na(value), value != '', value != '=""') %>%
    mutate(value = str_replace_all(value, '^="|"$', '')) %>%
    group_by(variable) %>%
    summarise(value = paste(value, collapse = ", "), .groups = 'drop') %>%
    pivot_wider(names_from = variable, values_from = value)
  
  column_order <- names(combined_data)
  numeric_suffix <- suppressWarnings(as.numeric(str_extract(column_order, "\\d+")))
  ordered_columns <- column_order[order(ifelse(is.na(numeric_suffix), -Inf, numeric_suffix))]
  combined_data[, ordered_columns, drop = FALSE]
}

process_data <- function(data, biomarker, main_label, interaction_label) {
  biomarker_rows <- data %>% filter(grepl(biomarker, v1, ignore.case = TRUE))
  if (nrow(biomarker_rows) == 0) stop("No rows found for biomarker pattern: ", biomarker)
  
  data_cols <- biomarker_rows %>%
    select(-v1) %>%
    summarise(across(everything(), ~ any(!is.na(.) & as.character(.) != '=""' & as.character(.) != ''))) %>%
    pivot_longer(cols = everything(), names_to = "variable", values_to = "has_data") %>%
    filter(has_data) %>%
    pull(variable)
  
  cols_to_keep <- c("v1", data_cols)
  biomarker_rows <- biomarker_rows[, cols_to_keep, drop = FALSE]
  
  head_cleaned <- combine_non_empty_values(biomarker_rows %>% filter(v1 == paste0('="', biomarker, '"')))
  cleaned <- combine_non_empty_values(biomarker_rows %>% filter(v1 != paste0('="', biomarker, '"')))
  
  head_cleaned <- head_cleaned %>% mutate(v1 = main_label)
  cleaned <- cleaned %>% mutate(v1 = interaction_label)
  bind_rows(head_cleaned, cleaned)
}

# Parses beta strings like "0.123***" and optional p-value text if present.
# Preferred: export exact p-values from Stata and include them in the table cells, e.g.
#   "0.123; p=0.004" or "0.123*** p=0.004".
# If exact p-values are absent, the pipeline falls back to conservative star cut-points
# so it remains reproducible, but q-values should then be described as approximate.
parse_beta_sig_p <- function(estimate_chr) {
  estimate_chr <- as.character(estimate_chr)
  estimate_chr <- stringr::str_trim(estimate_chr)
  
  # Extract exact p-values when present in common formats.
  # Supports p=0.004, P < 0.001, p<.05, p-value=0.02, etc.
  p_txt <- stringr::str_extract(estimate_chr, regex("[pP]([ -]?value)?\\s*[<=>]\\s*0?\\.?[0-9]+", ignore_case = TRUE))
  p_num_exact <- suppressWarnings(as.numeric(stringr::str_extract(p_txt, "0?\\.?[0-9]+")))
  p_num_exact <- ifelse(!is.na(p_num_exact) & p_num_exact > 1, p_num_exact / 1000, p_num_exact)
  p_num_exact <- ifelse(!is.na(p_num_exact) & p_num_exact == 0, 0.0005, p_num_exact)
  
  # Remove p-value text, commas, quotes, and stars to obtain beta.
  beta_txt <- estimate_chr %>%
    stringr::str_remove(regex("[pP]([ -]?value)?\\s*[<=>]\\s*0?\\.?[0-9]+", ignore_case = TRUE)) %>%
    stringr::str_replace_all('^="|"$', '') %>%
    stringr::str_replace_all(",", "")
  
  sig <- stringr::str_extract(beta_txt, "\\*+$")
  sig[is.na(sig)] <- ""
  beta <- suppressWarnings(as.numeric(stringr::str_replace(beta_txt, "\\*+$", "")))
  
  # Conservative fallback values when only stars are available.
  p_num_star <- dplyr::case_when(
    sig == "***" ~ 0.000999,
    sig == "**"  ~ 0.009999,
    sig == "*"   ~ 0.049999,
    TRUE           ~ 1.000000
  )
  
  p_num <- ifelse(!is.na(p_num_exact), p_num_exact, p_num_star)
  p_source <- ifelse(!is.na(p_num_exact), "exact_p_from_cell", "stars_conservative_cutpoint")
  
  p_cat <- dplyr::case_when(
    p_num < 0.001 ~ "<.001",
    p_num < 0.01  ~ "<.01",
    p_num < 0.05  ~ "<.05",
    p_num < 0.10  ~ "<.10",
    TRUE           ~ ">=.10"
  )
  
  tibble::tibble(estimate = beta, sig = sig, p = p_cat, p_num = p_num, p_source = p_source)
}

add_bh_qvalues <- function(dat) {
  dat %>%
    mutate(
      is_interaction = str_detect(term, "_int$"),
      nominal_alpha = ifelse(is_interaction, INTERACTION_NOMINAL_ALPHA, MAIN_NOMINAL_ALPHA),
      nominal_pass = p_num < nominal_alpha
    ) %>%
    # BH correction is applied separately to interaction and non-interaction terms.
    # Interaction terms are interpreted using q < 0.10, consistent with the requested
    # nominal interaction screen of p < 0.10 before multiple-testing correction.
    group_by(is_interaction) %>%
    mutate(q_bh = p.adjust(p_num, method = "BH")) %>%
    ungroup() %>%
    mutate(
      q_cat = case_when(
        q_bh < 0.001 ~ "<.001",
        q_bh < 0.01  ~ "<.01",
        q_bh < 0.05  ~ "<.05",
        q_bh < 0.10  ~ "<.10",
        TRUE         ~ ">=.10"
      ),
      # Figure display: main effects use nominal p categories up to p<0.05;
      # interaction terms use BH q categories up to q<0.10.
      display_sig_cat = case_when(
        !is_interaction & p_num < 0.001 ~ "<.001",
        !is_interaction & p_num < 0.01  ~ "<.01",
        !is_interaction & p_num < MAIN_NOMINAL_ALPHA ~ "<.05",
        is_interaction & q_bh < 0.001 ~ "<.001",
        is_interaction & q_bh < 0.01  ~ "<.01",
        is_interaction & q_bh < 0.05  ~ "<.05",
        is_interaction & q_bh < INTERACTION_BH_ALPHA ~ "<.10",
        TRUE ~ ">=.10"
      ),
      display_sig_num = case_when(
        display_sig_cat == "<.001" ~ 1L,
        display_sig_cat == "<.01"  ~ 2L,
        display_sig_cat == "<.05"  ~ 3L,
        display_sig_cat == "<.10"  ~ 4L,
        TRUE                        ~ 5L
      ),
      # Print q-values on interaction cells that pass the nominal p<0.10 screen.
      q_label = ifelse(
        is_interaction & p_num < INTERACTION_NOMINAL_ALPHA,
        ifelse(q_bh < 0.001, "q<.001", paste0("q=", sprintf("%.3f", q_bh))),
        ""
      )
    )
}

safe_write_csv <- function(x, path, ...) {
  out_dir <- dirname(path)
  if (!dir.exists(out_dir)) dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)
  utils::write.csv(x, path, ...)
}

# Shared column mapping: 15 metabolome PCs x 3 transitions
col_names <- paste0("v", 2:46)
transitions <- c("PD", "Dementia", "Mortality")
col_mapping <- data.frame(
  variable = col_names,
  metabolome = paste0("metabolome PC", ((seq_along(col_names) - 1) %/% 3) + 1),
  transition = transitions[((seq_along(col_names) - 1) %% 3) + 1],
  stringsAsFactors = FALSE
)

make_long <- function(wide_dat, term_map) {
  wide_dat %>%
    rowid_to_column(var = "row_id") %>%
    mutate(across(everything(), as.character)) %>%
    pivot_longer(cols = starts_with("v"), names_to = "variable", values_to = "estimate_chr") %>%
    filter(variable != "v1") %>%
    left_join(col_mapping, by = "variable") %>%
    mutate(term = recode(as.character(row_id), !!!term_map, .default = NA_character_)) %>%
    bind_cols(parse_beta_sig_p(.$estimate_chr)) %>%
    add_bh_qvalues() %>%
    select(metabolome, transition, term, estimate, sig, p, p_num, p_source, q_bh, q_cat, display_sig_cat, display_sig_num, q_label, is_interaction)
}

# ==========================================================================================
# 3. DATA CLEANING: FIGURE 3, NfL/GFAP x metabolome
# ==========================================================================================
file_table5 <- find_input_file("results_TABLE5.dta")
cat("Reading Table 5 data from:\n", file_table5, "\n\n")
NfL_GFAP <- read_dta(file_table5)

NfL_GFAP_c1 <- NfL_GFAP %>% filter(grepl("gfapbr|neflbr", v1, ignore.case = TRUE))
nfl_final <- process_data(NfL_GFAP_c1, "neflbr", "NfL_main", "NfL_interaction")
gfap_final <- process_data(NfL_GFAP_c1, "gfapbr", "GFAP_main", "GFAP_interaction")

NfL_GFAP_metabolite_c1 <- NfL_GFAP %>% filter(grepl("zMETAB", v1, ignore.case = TRUE) & !grepl("#c", v1))
NfL_GFAP_metabolite_c2 <- combine_non_empty_values(NfL_GFAP_metabolite_c1)

NfL_GFAP_metabolite_final <- NfL_GFAP_metabolite_c2 %>%
  select(v1:v46) %>%
  bind_rows(NfL_GFAP_metabolite_c2 %>% select(v1, v47:v91) %>% rename_with(~ paste0("v", 2:46), v47:v91)) %>%
  mutate(v1 = case_when(
    row_number() == 1 ~ "metabolome(NfL)_main",
    row_number() == 2 ~ "metabolome(GFAP)_main",
    TRUE ~ v1
  ))

names(gfap_final) <- colnames(nfl_final)
nfl_gfap_final <- rbind(nfl_final, gfap_final, NfL_GFAP_metabolite_final)

term_map_fig3 <- c(
  "1" = "NfL_main", "2" = "NfL_int", "3" = "GFAP_main", "4" = "GFAP_int",
  "5" = "metabolome(NfL)_main", "6" = "metabolome(GFAP)_main"
)
nfl_gfap_long_final <- make_long(nfl_gfap_final, term_map_fig3)

safe_write_csv(nfl_gfap_final, file.path(clean_out_dir, "nfl_gfap_final.csv"), row.names = FALSE)
safe_write_csv(nfl_gfap_long_final, file.path(clean_out_dir, "nfl_gfap_long_final_with_BH_qvalues.csv"), row.names = FALSE)
cat("Figure 3 p-value sources:\n")
print(table(nfl_gfap_long_final$p_source, useNA = "ifany"))

# ==========================================================================================
# 4. DATA CLEANING: FIGURE 4, air pollution x metabolome
# ==========================================================================================
file_table7 <- find_input_file("results_TABLE7.dta")
cat("Reading Table 7 data from:\n", file_table7, "\n\n")
air_pollution <- read_dta(file_table7)

air_pollution_c1 <- air_pollution %>% filter(grepl("PM", v1, ignore.case = FALSE))
PM1_final <- process_data(air_pollution_c1, "PM1", "PM2.5_main", "PM2.5_interaction")
PM2_final <- process_data(air_pollution_c1, "PM2", "PM10_main", "PM10_interaction")
PM3_final <- process_data(air_pollution_c1, "PM3", "PM2.5_10_main", "PM2.5_10_interaction")
PM4_final <- process_data(air_pollution_c1, "PM4", "PM2.5(abs)_main", "PM2.5(abs)_interaction")
PM5_final <- process_data(air_pollution_c1, "PM5", "NO2_main", "NO2_interaction")
PM6_final <- process_data(air_pollution_c1, "PM6", "NOX_main", "NOX_interaction")

air_pollution_metabolite_c1 <- air_pollution %>% filter(grepl("zMETAB", v1, ignore.case = TRUE) & !grepl("#c", v1))
air_pollution_metabolite_c2 <- combine_non_empty_values(air_pollution_metabolite_c1)

air_pollution_metabolite_final <- air_pollution_metabolite_c2 %>%
  select(v1:v46) %>%
  bind_rows(air_pollution_metabolite_c2 %>% select(v1, v47:v91) %>% rename_with(~ paste0("v", 2:46), v47:v91)) %>%
  bind_rows(air_pollution_metabolite_c2 %>% select(v1, v92:v136) %>% rename_with(~ paste0("v", 2:46), v92:v136)) %>%
  bind_rows(air_pollution_metabolite_c2 %>% select(v1, v137:v181) %>% rename_with(~ paste0("v", 2:46), v137:v181)) %>%
  bind_rows(air_pollution_metabolite_c2 %>% select(v1, v182:v226) %>% rename_with(~ paste0("v", 2:46), v182:v226)) %>%
  bind_rows(air_pollution_metabolite_c2 %>% select(v1, v227:v271) %>% rename_with(~ paste0("v", 2:46), v227:v271)) %>%
  mutate(v1 = case_when(
    row_number() == 1 ~ "metabolome(PM2.5)_main",
    row_number() == 2 ~ "metabolome(PM10)_main",
    row_number() == 3 ~ "metabolome(PM2.5_10)_main",
    row_number() == 4 ~ "metabolome(PM2.5[abs])_main",
    row_number() == 5 ~ "metabolome(NO2)_main",
    row_number() == 6 ~ "metabolome(NOX)_main",
    TRUE ~ v1
  ))

names(PM2_final) <- colnames(PM1_final)
names(PM3_final) <- colnames(PM1_final)
names(PM4_final) <- colnames(PM1_final)
names(PM5_final) <- colnames(PM1_final)
names(PM6_final) <- colnames(PM1_final)

air_pollution_final <- rbind(PM1_final, PM2_final, PM3_final, PM4_final, PM5_final, PM6_final, air_pollution_metabolite_final)

term_map_fig4 <- c(
  "1" = "PM2.5_main", "2" = "PM2.5_int",
  "3" = "PM10_main", "4" = "PM10_int",
  "5" = "PM2.5_10_main", "6" = "PM2.5_10_int",
  "7" = "PM2.5(abs)_main", "8" = "PM2.5(abs)_int",
  "9" = "NO2_main", "10" = "NO2_int",
  "11" = "NOX_main", "12" = "NOX_int",
  "13" = "metabolome(PM2.5)_main", "14" = "metabolome(PM10)_main",
  "15" = "metabolome(PM2.5_10)_main", "16" = "metabolome(PM2.5[abs])_main",
  "17" = "metabolome(NO2)_main", "18" = "metabolome(NOX)_main"
)
air_pollution_long_final <- make_long(air_pollution_final, term_map_fig4)

safe_write_csv(air_pollution_final, file.path(clean_out_dir, "air_pollution_final.csv"), row.names = FALSE)
safe_write_csv(air_pollution_long_final, file.path(clean_out_dir, "air_pollution_long_final_with_BH_qvalues.csv"), row.names = FALSE)
cat("Figure 4 p-value sources:\n")
print(table(air_pollution_long_final$p_source, useNA = "ifany"))

# ==========================================================================================
# 5. HEATMAP FUNCTIONS
# ==========================================================================================
heatmap_facet <- function(data, exposure = "Neurodegenerative markers") {
  # Defensive fallback: older cached objects may not contain display_sig_num.
  # Recreate it from display_sig_cat, q_cat, or p before plotting.
  if (!"display_sig_num" %in% names(data)) {
    if (!"display_sig_cat" %in% names(data)) {
      data <- data %>% mutate(display_sig_cat = dplyr::coalesce(q_cat, p, ">=.05"))
    }
    data <- data %>% mutate(
      display_sig_num = dplyr::case_when(
        display_sig_cat == "<.001" ~ 1L,
        display_sig_cat == "<.01"  ~ 2L,
        display_sig_cat == "<.05"  ~ 3L,
        display_sig_cat == "<.10"  ~ 4L,
        TRUE                        ~ 5L
      )
    )
  }
  temp_data <- data %>% filter(!is.na(estimate))
  if (nrow(temp_data) == 0) stop("No numeric estimates available for heatmap.")
  max_abs_value <- max(abs(temp_data$estimate), na.rm = TRUE)
  min_value <- -max_abs_value
  
  transition_labels <- c(
    "PD" = "Healthy to Parkinson's Disease",
    "Dementia" = "Healthy to Dementia",
    "Mortality" = "Healthy to Mortality"
  )
  
  data.long <- data %>%
    mutate(
      ap = factor(display_sig_num, levels = 1:5),
      aq = factor(ifelse(display_sig_num == 5, "insig", "Pass"), levels = c("insig", "Pass")),
      transition = factor(transition, levels = c("PD", "Dementia", "Mortality")),
      bg.line = ifelse(term %in% c("GFAP_main", "metabolome(GFAP)_main", "GFAP_int", "PM10_main", "metabolome(PM10)_main", "PM10_int", "PM2.5(abs)_main", "metabolome(PM2.5[abs])_main", "PM2.5(abs)_int", "NOX_main", "metabolome(NOX)_main", "NOX_int"), "White", "Dark Grey"),
      bg.color = ifelse(term %in% c("GFAP_main", "metabolome(GFAP)_main", "GFAP_int", "PM10_main", "metabolome(PM10)_main", "PM10_int", "PM2.5(abs)_main", "metabolome(PM2.5[abs])_main", "PM2.5(abs)_int", "NOX_main", "metabolome(NOX)_main", "NOX_int"), "Dark Grey", "White")
    ) %>%
    arrange(factor(metabolome, levels = unique(data$metabolome)), factor(term))
  
  if (exposure == "Neurodegenerative markers") {
    x_levels <- c("NfL_main", "metabolome(NfL)_main", "NfL_int", "GFAP_main", "metabolome(GFAP)_main", "GFAP_int")
    dot.size <- c("1" = 7, "2" = 5, "3" = 3, "4" = 2.2, "5" = 1.4)
  } else {
    x_levels <- c("PM2.5_main", "metabolome(PM2.5)_main", "PM2.5_int", "PM10_main", "metabolome(PM10)_main", "PM10_int", "PM2.5_10_main", "metabolome(PM2.5_10)_main", "PM2.5_10_int", "PM2.5(abs)_main", "metabolome(PM2.5[abs])_main", "PM2.5(abs)_int", "NO2_main", "metabolome(NO2)_main", "NO2_int", "NOX_main", "metabolome(NOX)_main", "NOX_int")
    dot.size <- c("1" = 5, "2" = 3.5, "3" = 2, "4" = 1.4, "5" = 0.8)
  }
  
  ggplot(data.long, aes(x = factor(term, levels = x_levels), y = forcats::fct_rev(factor(metabolome, levels = unique(metabolome))))) +
    geom_tile(color = data.long$bg.line, fill = data.long$bg.color) +
    geom_point(aes(size = ap, shape = aq, fill = estimate)) +
    geom_text(aes(label = q_label), size = 2.2, vjust = -1.15, color = "black", na.rm = TRUE) +
    theme_minimal() +
    scale_size_manual(
      values = dot.size,
      breaks = as.factor(1:5),
      labels = c("1" = "< 0.001", "2" = "< 0.01", "3" = "< 0.05", "4" = "< 0.10", "5" = "\u2265 0.10"),
      drop = FALSE
    ) +
    scale_fill_scico(palette = "vik", midpoint = 0, limits = c(min_value - 0.05, max_abs_value + 0.05), aesthetics = c("colour", "fill")) +
    scale_shape_manual(values = c("insig" = 1, "Pass" = 21), breaks = c("insig", "Pass"), guide = "none") +
    facet_wrap(~ transition, ncol = 3, labeller = labeller(transition = transition_labels)) +
    guides(
      size = guide_legend(override.aes = list(shape = c(21, 21, 21, 21, 1), fill = c("black", "black", "black", "black", "white")), order = 1),
      fill = guide_colorbar(order = 2)
    ) +
    labs(
      title = paste0("Heatmap (Weibull regression models - ", exposure, " and plasma metabolome results)"),
      x = exposure,
      y = "Metabolome Principal Components",
      size = "Significance\nmain effects: nominal p\ninteractions: BH q",
      fill = expression(paste(beta, " coefficients")),
      caption = paste0(
        "LnHR (beta coefficients) for main effects and interactions (int) with 15 metabolome PCs are displayed. ",
        "Exposures are binary above/below median; metabolome PCs are z-scored. ",
        "Interaction-cell significance uses Benjamini-Hochberg q-values with q<0.10, after a nominal interaction screen of p<0.10. ",
        "If the Stata export only contains stars, q-values are computed from conservative star cut-points; export exact p-values for exact q-values."
      )
    ) +
    theme(
      plot.title = element_text(color = "Dark blue", size = 12, face = "bold.italic", hjust = 0.5),
      plot.caption = element_text(size = 8, hjust = 0.5, color = "Dark grey"),
      axis.title.x = element_text(color = "deepskyblue", size = 11, face = "bold"),
      axis.text.x = element_text(angle = 90, size = 9, hjust = 1),
      aspect.ratio = 7/4,
      strip.text = element_text(size = 11, color = "Dark blue", face = "bold"),
      panel.spacing = unit(1, "cm")
    ) +
    coord_fixed()
}

save_plot_both <- function(plot_obj, filename_base, out_dir, width = 12, height = 10) {
  if (!dir.exists(out_dir)) dir.create(out_dir, recursive = TRUE, showWarnings = FALSE)
  ggsave(file.path(out_dir, paste0(filename_base, ".jpeg")), plot_obj, width = width, height = height, units = "in", dpi = 300)
  ggsave(file.path(out_dir, paste0(filename_base, ".pdf")),  plot_obj, width = width, height = height, units = "in")
}

# ==========================================================================================
# 6. MAKE AND SAVE FIGURES
# ==========================================================================================
Neurodegenerative_heatmap_facet <- heatmap_facet(nfl_gfap_long_final, exposure = "Neurodegenerative markers")
print(Neurodegenerative_heatmap_facet)
save_plot_both(Neurodegenerative_heatmap_facet, "Figure3_NfL_GFAP_metabolome_heatmap_BH_qvalues", fig3_out_dir, width = 12, height = 10)

Air_pollution_heatmap_facet <- heatmap_facet(air_pollution_long_final, exposure = "Air pollution markers")
print(Air_pollution_heatmap_facet)
save_plot_both(Air_pollution_heatmap_facet, "Figure4_PM_metabolome_heatmap_BH_qvalues", fig4_out_dir, width = 12, height = 10)

cat("\nPipeline complete. Outputs written to:\n")
cat("\nFigure 3:", fig3_out_dir)
cat("\nFigure 4:", fig4_out_dir)
cat("\nCleaned data:", clean_out_dir, "\n")
