make_scatter_plot <- function(data, x, y) {
  ggplot(data, aes(x = {{x}}, y = {{y}})) +
    geom_point(size = 0.8, alpha = 0.6) +
    theme_bw()
}