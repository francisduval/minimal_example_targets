library(targets)

list(
  tar_target(boston_file, "data/boston.csv", format = "file")
)