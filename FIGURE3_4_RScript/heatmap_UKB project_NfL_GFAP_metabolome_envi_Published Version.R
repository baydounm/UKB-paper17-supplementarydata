#-------------------------------------------------------------------------------------------------------------------------#
#######  Making heatmaps for UKB project: Proteomic neurodegenerative markers, air pollution and the plasma metabolome ----
#######  Mission: Plot the betas and interaction effects                                                               ----
#######  Programmer: Yi-Han Hu                                                                                         ----
#######  Date: Sep. 20 2024                                                                                            ----
#-------------------------------------------------------------------------------------------------------------------------#

op <- options(nwarnings = 10000)
# -------------------------------------- #
# Specify working directory where the script and data files are
# -------------------------------------- #
WorkingDirectory = "route"

# -------------------------------------- #
# Set working directory
# -------------------------------------- #
setwd(WorkingDirectory)

# -------------------------------------- #
# self-defined functions
# -------------------------------------- #
# clean data functions
combine_non_empty_values <- function(data) {
  combined_data <- data %>%
    mutate(row_id = row_number()) %>%
    pivot_longer(
      cols = -row_id,
      names_to = "variable",
      values_to = "value"
    ) %>%
    filter(value != '=""') %>%
    mutate(value = str_replace_all(value, '^="|"$', '')) %>%
    group_by(variable) %>%
    summarise(
      value = paste(value, collapse = ", "),
      .groups = 'drop'
    ) %>%
    pivot_wider(names_from = variable, values_from = value)
  
  # Extract numeric part of column names for ordering
  column_order <- names(combined_data)
  numeric_suffix <- as.numeric(str_extract(column_order, "\\d+"))
  
  # Order columns by numeric suffix
  ordered_columns <- column_order[order(numeric_suffix)]
  
  # Reorder the columns
  combined_data <- combined_data[, ordered_columns]
  
  return(combined_data)
}

process_data <- function(data, biomarker, main_label, interaction_label) {
  # Filter rows where v1 contains the biomarker
  biomarker_rows <- data %>%
    filter(grepl(biomarker, v1, ignore.case = TRUE))
  
  # Identify columns with non-empty values in the data
  data_cols <- biomarker_rows %>%
    select(-v1) %>%
    summarise(across(everything(), ~ any(. != '=""'))) %>%
    pivot_longer(cols = everything(), names_to = "variable", values_to = "has_data") %>%
    filter(has_data) %>%
    pull(variable)
  
  # Include v1 in the columns to keep
  cols_to_keep <- c("v1", data_cols)
  
  # Subset data rows with non-empty values (columns)
  biomarker_rows <- biomarker_rows[, cols_to_keep]
  
  # Combine non-empty values from data rows
  head_cleaned <- combine_non_empty_values(biomarker_rows %>% filter(v1 == paste0('="', biomarker, '"')))
  cleaned <- combine_non_empty_values(biomarker_rows %>% filter(v1 != paste0('="', biomarker, '"')))
  
  # Assign labels to the v1 column
  head_cleaned <- head_cleaned %>% mutate(v1 = main_label)
  cleaned <- cleaned %>% mutate(v1 = interaction_label)
  
  # Combine the cleaned data frames
  final <- bind_rows(head_cleaned, cleaned)
  
  return(final)
}


# -------------------------------------- #
# Turn off scientific notation
# -------------------------------------- #
options(scipen=999)

# -------------------------------------- #
# Install/load the packages
# -------------------------------------- #
library(haven)
library(tidyr) 
library(dplyr)
library(tibble)
library(stringr)
library(ggplot2)
library(reshape)
library(purrr)
library(data.table)
library(sjmisc)
library(RColorBrewer)
library(ggnewscale)
library(scico)

# ------------------------------------------------------------------------------------------ #
# ------------------------------------------------------------------------------------------ #
# ---------------------------------- Part 1 Data preprocess                               ----
# ------------------------------------------------------------------------------------------ #
# ------------------------------------------------------------------------------------------ #
## ----------- ##
## Load data ----                    
## ----------- ##
## 1.	Table 5 ----
## (LnHR for main effects of NfL and GFAP and their interactions with 15 principal components of the metabolome (PC1 to PC15) in relation to 3 transitions)
NfL_GFAP <- read_dta("Data/results_TABLE5.dta")

dim(NfL_GFAP)
head(NfL_GFAP)
colnames(NfL_GFAP)

# clean the output for heatmap (filter rows where the variable V1 contains "gfapbr" or "neflbr")
NfL_GFAP_c1 <- NfL_GFAP %>% 
  filter(grepl("gfapbr|neflbr", v1, ignore.case = TRUE))

#check
dim(NfL_GFAP_c1)
head(NfL_GFAP_c1)
colnames(NfL_GFAP_c1)

# cleaned NfL results
nfl_final <- process_data(
  data = NfL_GFAP_c1,
  biomarker = "neflbr",
  main_label = "NfL_main",
  interaction_label = "NfL_interaction"
)
# check
dim(nfl_final)
head(nfl_final)
colnames(nfl_final)

# cleaned GFAP results
gfap_final <- process_data(
  data = NfL_GFAP_c1,
  biomarker = "gfapbr",
  main_label = "GFAP_main",
  interaction_label = "GFAP_interaction"
)
# check
dim(gfap_final)
head(gfap_final)
colnames(gfap_final)


# metabolite results
NfL_GFAP_metabolite_c1 <- NfL_GFAP %>% 
  filter(grepl("zMETAB", v1, ignore.case = TRUE) & !grepl("#c", v1))

#check
dim(NfL_GFAP_metabolite_c1)
head(NfL_GFAP_metabolite_c1)
colnames(NfL_GFAP_metabolite_c1)

# remove empty cells
NfL_GFAP_metabolite_c2 <- combine_non_empty_values(NfL_GFAP_metabolite_c1)
# check
dim(NfL_GFAP_metabolite_c2)

# transform data
NfL_GFAP_metabolite_final <- NfL_GFAP_metabolite_c2 %>%
  select(v1:v46) %>% 
  bind_rows(
    NfL_GFAP_metabolite_c2 %>%
      select(v1, v47:v91) %>%
      rename_with(~ paste0("v", 2:46), v47:v91)
  ) %>% 
  mutate(
    v1 = case_when(
      row_number() == 1 ~ "metabolome(NfL)_main",
      row_number() == 2 ~ "metabolome(GFAP)_main",  
      TRUE ~ v1 # Retain existing value for any other rows (if any)
    )
  )

# combine cleaned data
names(gfap_final) <- colnames(nfl_final)
nfl_gfap_final <- rbind(nfl_final, gfap_final, NfL_GFAP_metabolite_final)


## 2.	Table 7 ----
## (LnHR for main effects of 6 air pollution markers and their interactions with 15 principal components of the metabolome (PC1 to PC15) in relation to 3 transitions)
air_pollution <- read_dta("Data/results_TABLE7.dta")

dim(air_pollution)
head(air_pollution)
colnames(air_pollution)

# clean the output for heatmap (filter rows where the variable v1 contains "PM")
air_pollution_c1 <- air_pollution %>% 
  filter(grepl("PM", v1, ignore.case = FALSE))

#check
dim(air_pollution_c1)

# cleaned PM1 results
PM1_final <- process_data(
  data = air_pollution_c1,
  biomarker = "PM1",
  main_label = "PM2.5_main",
  interaction_label = "PM2.5_interaction"
)
# check
dim(PM1_final)

# cleaned PM2 results
PM2_final <- process_data(
  data = air_pollution_c1,
  biomarker = "PM2",
  main_label = "PM10_main",
  interaction_label = "PM10_interaction"
)
# check
dim(PM2_final)

# cleaned PM3 results
PM3_final <- process_data(
  data = air_pollution_c1,
  biomarker = "PM3",
  main_label = "PM2.5_10_main",
  interaction_label = "PM2.5_10_interaction"
)
# check
dim(PM3_final)

# cleaned PM4 results
PM4_final <- process_data(
  data = air_pollution_c1,
  biomarker = "PM4",
  main_label = "PM2.5(abs)_main",
  interaction_label = "PM2.5(abs)_interaction"
)
# check
dim(PM4_final)

# cleaned PM5 results
PM5_final <- process_data(
  data = air_pollution_c1,
  biomarker = "PM5",
  main_label = "NO2_main",
  interaction_label = "NO2_interaction"
)
# check
dim(PM5_final)

# cleaned PM6 results
PM6_final <- process_data(
  data = air_pollution_c1,
  biomarker = "PM6",
  main_label = "NOX_main",
  interaction_label = "NOX_interaction"
)
# check
dim(PM6_final)

# metabolite results
air_pollution_metabolite_c1 <- air_pollution %>% 
  filter(grepl("zMETAB", v1, ignore.case = TRUE) & !grepl("#c", v1))

#check
dim(air_pollution_metabolite_c1)
head(air_pollution_metabolite_c1)
colnames(air_pollution_metabolite_c1)

# remove empty cells
air_pollution_metabolite_c2 <- combine_non_empty_values(air_pollution_metabolite_c1)
# check
dim(air_pollution_metabolite_c2)

# transform data
air_pollution_metabolite_final <- air_pollution_metabolite_c2 %>%
  select(v1:v46) %>% 
  bind_rows(
    air_pollution_metabolite_c2 %>%
      select(v1, v47:v91) %>%
      rename_with(~ paste0("v", 2:46), v47:v91)
  ) %>% 
  bind_rows(
    air_pollution_metabolite_c2 %>%
      select(v1, v92:v136) %>%
      rename_with(~ paste0("v", 2:46), v92:v136)
  ) %>% 
  bind_rows(
    air_pollution_metabolite_c2 %>%
      select(v1, v137:v181) %>%
      rename_with(~ paste0("v", 2:46), v137:v181)
  ) %>% 
  bind_rows(
    air_pollution_metabolite_c2 %>%
      select(v1, v182:v226) %>%
      rename_with(~ paste0("v", 2:46), v182:v226)
  ) %>% 
  bind_rows(
    air_pollution_metabolite_c2 %>%
      select(v1, v227:v271) %>%
      rename_with(~ paste0("v", 2:46), v227:v271)
  ) %>% 
  mutate(
    v1 = case_when(
      row_number() == 1 ~ "metabolome(PM2.5)_main",
      row_number() == 2 ~ "metabolome(PM10)_main",  
      row_number() == 3 ~ "metabolome(PM2.5_10)_main",  
      row_number() == 4 ~ "metabolome(PM2.5[abs])_main",  
      row_number() == 5 ~ "metabolome(NO2)_main",  
      row_number() == 6 ~ "metabolome(NOX)_main",
      TRUE ~ v1 # Retain existing value for any other rows (if any)
    )
  )

# combine cleaned data
names(PM2_final) <- colnames(PM1_final)
names(PM3_final) <- colnames(PM1_final)
names(PM4_final) <- colnames(PM1_final)
names(PM5_final) <- colnames(PM1_final)
names(PM6_final) <- colnames(PM1_final)

air_pollution_final <- rbind(PM1_final, PM2_final, PM3_final, PM4_final, PM5_final, PM6_final, air_pollution_metabolite_final)


## ------------------------------ ##
## Convert data to long-format  ----
## ------------------------------ ##
# Create the column mapping
col_names <- paste0("v", 2:46)
metabolome <- vector()
transition <- vector()
transitions <- c("PD", "Dementia", "Mortality")

for (i in seq_along(col_names)) {
  pc_number <- ((i - 1) %/% 3) + 1
  metabolome[i] <- paste0("metabolome PC", pc_number)
  transition_index <- ((i - 1) %% 3) + 1
  transition[i] <- transitions[transition_index]
}

col_mapping <- data.frame(
  variable = col_names,
  metabolome = metabolome,
  transition = transition,
  stringsAsFactors = FALSE
)

# NfL & GFAP
nfl_gfap_long <- nfl_gfap_final %>%
  # (first, add a row identifier)
  rowid_to_column(var = "row_id") %>% 
  #  Ensure all columns are character
  mutate(across(everything(), as.character)) %>% 
  # Reshape the data frame to long format
  pivot_longer(
    cols = starts_with("v"),
    names_to = "variable",
    values_to = "estimate"
  )

# Clean long-format data
nfl_gfap_long_final <- nfl_gfap_long %>%
  # Exclude 'v1' and merge with column mapping
  filter(variable != "v1") %>%
  left_join(col_mapping, by = "variable") %>% 
  # creat term variable based on row_id
  mutate(term = case_when(
    row_id == 1 ~ "NfL_main",
    row_id == 2 ~ "NfL_int",
    row_id == 3 ~ "GFAP_main",
    row_id == 4 ~ "GFAP_int",
    row_id == 5 ~ "metabolome(NfL)_main",
    row_id == 6 ~ "metabolome(GFAP)_main",
    TRUE ~ NA_character_ )) %>% 
  # Clean the 'estimate' column and split into 'estimate' and 'sig'
  mutate(sig = str_extract(estimate, "\\*+$"),          # Extract asterisks at the end
         estimate = as.numeric(str_replace(estimate, "\\*+$", "")), # Remove asterisks from estimate &  Convert estimate to numeric
         p = case_when(
           sig == "*" ~ "<.05",
           sig == "**" ~ "<.01",
           sig == "***" ~ "<.001",
           TRUE ~ ">.05" )
  ) %>% 
  # Select and arrange
  dplyr::select(metabolome, transition, term, estimate, sig, p)



# air pollution
air_pollution_long <- air_pollution_final %>%
  # (first, add a row identifier)
  rowid_to_column(var = "row_id") %>% 
  #  Ensure all columns are character
  mutate(across(everything(), as.character)) %>% 
  # Reshape the data frame to long format
  pivot_longer(
    cols = starts_with("v"),
    names_to = "variable",
    values_to = "estimate"
  )

# Clean long-format data
air_pollution_long_final <- air_pollution_long %>%
  # Exclude 'v1' and merge with column mapping
  filter(variable != "v1") %>%
  left_join(col_mapping, by = "variable") %>% 
  # creat term variable based on row_id
  mutate(term = case_when(
    row_id == 1 ~ "PM2.5_main",
    row_id == 2 ~ "PM2.5_int",
    row_id == 3 ~ "PM10_main",
    row_id == 4 ~ "PM10_int",
    row_id == 5 ~ "PM2.5_10_main",
    row_id == 6 ~ "PM2.5_10_int",
    row_id == 7 ~ "PM2.5(abs)_main",
    row_id == 8 ~ "PM2.5(abs)_int",
    row_id == 9 ~ "NO2_main",
    row_id == 10 ~ "NO2_int",
    row_id == 11 ~ "NOX_main",
    row_id == 12 ~ "NOX_int",
    row_id == 13 ~ "metabolome(PM2.5)_main",
    row_id == 14 ~ "metabolome(PM10)_main",  
    row_id == 15 ~ "metabolome(PM2.5_10)_main",  
    row_id == 16 ~ "metabolome(PM2.5[abs])_main",  
    row_id == 17 ~ "metabolome(NO2)_main",  
    row_id == 18 ~ "metabolome(NOX)_main",
    TRUE ~ NA_character_ )) %>% 
  # Clean the 'estimate' column and split into 'estimate' and 'sig'
  mutate(sig = str_extract(estimate, "\\*+$"),          # Extract asterisks at the end
         estimate = as.numeric(str_replace(estimate, "\\*+$", "")), # Remove asterisks from estimate &  Convert estimate to numeric
         p = case_when(
           sig == "*" ~ "<.05",
           sig == "**" ~ "<.01",
           sig == "***" ~ "<.001",
           TRUE ~ ">.05" )
  ) %>% 
  # Select and arrange
  dplyr::select(metabolome, transition, term, estimate, sig, p)


# save the cleaned datasets
write.csv(nfl_gfap_final, "Data/nfl_gfap_final.csv", row.names = FALSE)
write.csv(nfl_gfap_long_final, "Data/nfl_gfap_long_final.csv", row.names = FALSE)
write.csv(air_pollution_final, "Data/air_pollution_final.csv", row.names = FALSE)
write.csv(air_pollution_long_final, "Data/air_pollution_long_final.csv", row.names = FALSE)


# ------------------------------------------------------------------------------------------- #
# ------------------------------------------------------------------------------------------- #
# ------------------------------------- Part 2 Heat maps                                   ----
# ------------------------------------------------------------------------------------------- #
# ------------------------------------------------------------------------------------------- #
# --------------------------------------------- #
# panel heatmaps for NfL/GFAP and air pollution
# --------------------------------------------- #

heatmap.facet <- function(data, exposure = "Neurodegenerative markers"){
  # color for mediation
  pal <- scico(7, palette = 'acton')
  
  # set limits based on the maximum absolute value across all exposure-outcome pairs to ensure consistency.
  # and only based on those significant 
  temp_data <- data %>% filter(p != ">.05")
  max_abs_value <- max(abs(c(range(as.numeric(temp_data$estimate)))))
  min_value <- min(c(range(as.numeric(temp_data$estimate))))
  
  # Define labels with subtitles for each transition outcome
  transition_labels <- c(
    "PD" = "Healthy to Parkinson's Disease",
    "Dementia" = "Healthy to Dementia",
    "Mortality" = "Healthy to Mortality"
  )
  
  
  data.long <- data %>% 
    mutate(ap=factor(ifelse(p == "<.001", 1,
                            ifelse(p == "<.01", 2, 
                                   ifelse(p == "<.05", 3, 4))), levels = 1:4),
           aq=factor(ifelse(ap == 4 ,"insig", "Pass"), levels = c("insig", "Pass")),
           transition = factor(transition, levels = c("PD", "Dementia", "Mortality")),
           bg.line=ifelse(term %in% c("GFAP_main", "metabolome(GFAP)_main", "GFAP_int", "PM10_main", "metabolome(PM10)_main", "PM10_int", "PM2.5(abs)_main", "metabolome(PM2.5[abs])_main", "PM2.5(abs)_int", "NOX_main", "metabolome(NOX)_main", "NOX_int"), "White", "Dark Grey"),
           bg.color=ifelse(term %in% c("GFAP_main", "metabolome(GFAP)_main", "GFAP_int", "PM10_main", "metabolome(PM10)_main", "PM10_int", "PM2.5(abs)_main", "metabolome(PM2.5[abs])_main", "PM2.5(abs)_int", "NOX_main", "metabolome(NOX)_main", "NOX_int"), "Dark Grey", "White")) %>% 
    arrange(factor(metabolome, levels = unique(data$metabolome)), factor(term))
  
  # assign factor level and figure options based on the exposure
  if (exposure %in% c("Neurodegenerative markers")){
    p.plot <- ggplot(data = data.long, aes(x = factor(term, levels = c("NfL_main", "metabolome(NfL)_main", "NfL_int", "GFAP_main", "metabolome(GFAP)_main", "GFAP_int")), y =forcats::fct_rev(factor(metabolome, levels = unique(metabolome)))))
    shape.list <- c(21, 21, 21, 1)
    fill.list <- c("black", "black", "black", "white")
    dot.size <- c("1"= 7, "2"= 5, "3"=3, "4"= 2)
  } else if (exposure %in% c("Air pollution markers")){
    p.plot <- ggplot(data = data.long, aes(x = factor(term, levels = c("PM2.5_main", "metabolome(PM2.5)_main", "PM2.5_int","PM10_main", "metabolome(PM10)_main", "PM10_int", "PM2.5_10_main", "metabolome(PM2.5_10)_main", "PM2.5_10_int", "PM2.5(abs)_main", "metabolome(PM2.5[abs])_main", "PM2.5(abs)_int", "NO2_main", "metabolome(NO2)_main", "NO2_int", "NOX_main", "metabolome(NOX)_main", "NOX_int")), y =forcats::fct_rev(factor(metabolome, levels = unique(metabolome)))))
    shape.list <- c(21, 21, 21, 1)
    fill.list <- c("black", "black", "black", "white")
    dot.size <- c("1"= 5, "2"= 3.5, "3"=2, "4"= 1)
  }
  
  p.plot <- p.plot +
    geom_tile(color = data.long$bg.line, fill = data.long$bg.color)+
    geom_point(aes(size=ap, 
                   shape=aq,
                   fill=estimate))  +
    theme_minimal() +
    scale_size_manual(values=dot.size,
                      breaks = as.factor(1:4),
                      labels = c("1" = "< 0.001", "2" = "< 0.01", "3" = "< 0.05", "4"= "\u2265 .05"))+
                      # drop = FALSE)+
    scale_fill_scico(palette = "vik", midpoint = 0, 
                     limits = c(min_value - 0.05, max_abs_value + 0.05),
                     aesthetics = c("colour","fill")) +
    scale_shape_manual(values = c('insig'=1,'Pass'=21),
                       breaks = c("insig", "Pass"), guide = "none") +
    # Facet by transition outcome
    facet_wrap(~ transition, ncol = 3, labeller = labeller(transition = transition_labels)) +
    # Use ggh4x to arrange the legends side by side
    guides(
      size = guide_legend(override.aes = list(shape = shape.list, fill = fill.list), order = 1),
      fill = guide_colorbar(order = 2)
    ) +
    labs(title=paste("Heatmap (Weibull regression models - ",  exposure , " and plasma metabolome results)", sep = ""),
         # subtitle=paste(" Healthy to ",  transition.outcome, sep = ""),
         x=paste(exposure, sep = ""),
         y=paste("Metabolome Principal Components", sep = ""),
         size=paste("p-value\nsolid circle: p<.05"), fill=(expression(paste(beta," coefficients"))),
         caption="LnHR (beta coefficients) for the main effects and their interactions (int) with 15 principal components of the metabolome were displayed. \n Exposures are categorized as binary variables (above the median or not), while metabolome scores are continuous and standardized (mean = 0, SD = 1).") +
    theme(plot.title = element_text(color="Dark blue", size=12, face="bold.italic", hjust = 0.5),
          # plot.subtitle=element_text(color="Dark blue", size=12, hjust=0.5, face="bold.italic"),
          plot.caption=element_text(size=9, hjust=0.5, color="Dark grey"),
          axis.title.x = element_text(color="deepskyblue", size=11, face="bold"),
          axis.text.x = element_text(angle = 90, size = 9, hjust = 1),
          aspect.ratio = 7/4,
          # facet label adjustment
          strip.text = element_text(
            size = 11,         # Font size
            color = "Dark blue", # Text color
            face = "bold"     # Font face: "plain", "bold", "italic", etc.
          ),
          # facets space
          panel.spacing = unit(1, "cm")) +
    coord_fixed()
  
  return(p.plot)
}

Neurodegenerative.heatmap.facet <- heatmap.facet(nfl_gfap_long_final, exposure = "Neurodegenerative markers")
print(Neurodegenerative.heatmap.facet)
ggsave(paste(plot.out.folder, "Neurodegenerative markers_heatmap.jpeg",sep=""), Neurodegenerative.heatmap.facet, width = 12, height = 10, units = "in", dpi = 300)


Air_pollution.heatmap.facet <- heatmap.facet(air_pollution_long_final, exposure = "Air pollution markers")
print(Air_pollution.heatmap.facet)
ggsave(paste(plot.out.folder, "Air pollution markers_heatmap.jpeg",sep=""), Air_pollution.heatmap.facet, width = 12, height = 10, units = "in", dpi = 300)
