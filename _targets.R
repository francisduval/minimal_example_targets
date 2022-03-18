library(targets)
library(tidyverse)

list(
  tar_target(boston_file, "data/boston.csv", format = "file"),
  tar_target(boston_data, read_csv(boston_file))
)