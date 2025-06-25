# Load required libraries
library(sf)
library(tidyverse)

# Read in the GeoJSON file
bronx_redline <- st_read("bronx-redline.geojson")

# View column names to find where the HOLC grade is stored
glimpse(bronx_redline)

# Select only the grade column and remove geometry (not needed for this calc)
grades_data <- bronx_redline %>%
  select(grade) %>%
  st_drop_geometry()

# Count how many areas fall under each grade
grade_counts <- grades_data %>%
  group_by(grade) %>%
  summarize(count = n()) %>%
  ungroup()

# Calculate percentage for each grade
grade_percentages <- grade_counts %>%
  mutate(
    total = sum(count),
    percent = round((count / total) * 100, 1)
  ) %>%
  select(grade, count, percent)

# Export to CSV
write_csv(grade_percentages, "bronx_redline_grade_percentages.csv")

# Read in the GeoJSON file
brooklyn_redline <- st_read("brooklyn-redline.geojson")

# View column names to find where the HOLC grade is stored
glimpse(brooklyn_redline)

# Select only the grade column and remove geometry (not needed for this calc)
grades_data <- brooklyn_redline %>%
  select(grade) %>%
  st_drop_geometry()

# Count how many areas fall under each grade
grade_counts <- grades_data %>%
  group_by(grade) %>%
  summarize(count = n()) %>%
  ungroup()

# Calculate percentage for each grade
grade_percentages <- grade_counts %>%
  mutate(
    total = sum(count),
    percent = round((count / total) * 100, 1)
  ) %>%
  select(grade, count, percent)

# Export to CSV
write_csv(grade_percentages, "brooklyn_redline_grade_percentages.csv")

# Read in the GeoJSON file
manhattan_redline <- st_read("manhattan-redline.geojson")

# View column names to find where the HOLC grade is stored
glimpse(manhattan_redline)

# Select only the grade column and remove geometry (not needed for this calc)
grades_data <- manhattan_redline %>%
  select(grade) %>%
  st_drop_geometry()

# Count how many areas fall under each grade
grade_counts <- grades_data %>%
  group_by(grade) %>%
  summarize(count = n()) %>%
  ungroup()

# Calculate percentage for each grade
grade_percentages <- grade_counts %>%
  mutate(
    total = sum(count),
    percent = round((count / total) * 100, 1)
  ) %>%
  select(grade, count, percent)

# Export to CSV
write_csv(grade_percentages, "manhattan_redline_grade_percentages.csv")

# Read in the GeoJSON file
queens_redline <- st_read("queens-redline.geojson")

# View column names to find where the HOLC grade is stored
glimpse(queens_redline)

# Select only the grade column and remove geometry (not needed for this calc)
grades_data <- queens_redline %>%
  select(grade) %>%
  st_drop_geometry()

# Count how many areas fall under each grade
grade_counts <- grades_data %>%
  group_by(grade) %>%
  summarize(count = n()) %>%
  ungroup()

# Calculate percentage for each grade
grade_percentages <- grade_counts %>%
  mutate(
    total = sum(count),
    percent = round((count / total) * 100, 1)
  ) %>%
  select(grade, count, percent)

# Export to CSV
write_csv(grade_percentages, "queens_redline_grade_percentages.csv")

# Read in the GeoJSON file
statenisland_redline <- st_read("statenisland-redline.geojson")

# View column names to find where the HOLC grade is stored
glimpse(statenisland_redline)

# Select only the grade column and remove geometry (not needed for this calc)
grades_data <- statenisland_redline %>%
  select(grade) %>%
  st_drop_geometry()

# Count how many areas fall under each grade
grade_counts <- grades_data %>%
  group_by(grade) %>%
  summarize(count = n()) %>%
  ungroup()

# Calculate percentage for each grade
grade_percentages <- grade_counts %>%
  mutate(
    total = sum(count),
    percent = round((count / total) * 100, 1)
  ) %>%
  select(grade, count, percent)

# Export to CSV
write_csv(grade_percentages, "statenisland_redline_grade_percentages.csv")
