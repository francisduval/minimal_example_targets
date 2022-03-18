library(targets)
library(tidyverse)

walk(fs::dir_ls("R"), source)

list(
  tar_target(boston_file, "data/boston.csv", format = "file"),
  tar_target(boston_data, read_csv(boston_file)),
  tar_target(plot_medv_lstat, make_scatter_plot(boston_data, x = lstat, y = medv)),
  tar_target(lm_fit, lm(medv ~ lstat, data = boston_data)),
  tar_target(lm_pred, predict(lm_fit))
)