library(hexSticker)
library(ggplot2)
library(cropcircles)
library(showtext)

font_add_google("Outfit")
showtext_auto()
showtext_opts(dpi = 300)

road <- data.frame(
  x = c(-3, 3, 0.5, -0.5),
  y = c(0, 0, 10, 10)
)

grass <- data.frame(
  x = c(-10, 10, 10, -10),
  y = c(0, 0, 10, 10)
)

sky <- data.frame(
  x = c(-10, 10, 10, -10),
  y = c(10, 10, 20, 20)
)

dashes <- data.frame(
  x = 0,
  y_start = seq(0, 9.5, by = 1),
  y_end = seq(0.5, 10, by = 1)
)

p <- ggplot() +
  geom_polygon(
    data = grass,
    aes(x = x, y = y), fill = "#659157"
  ) +
  geom_polygon(
    data = sky,
    aes(x = x, y = y), fill = "#74A4BC"
  ) +
  geom_polygon(
    data = road,
    aes(x = x, y = y), fill = "gray40"
  ) +
  geom_segment(
    data = dashes,
    aes(x = x, xend = x, y = y_start, yend = y_end),
    color = "white", linewidth = 1
  ) +
  coord_cartesian(expand = FALSE) +
  theme_void()
tmp <- tempfile()
ggplot2::ggsave(tmp, p, device = "png", width = 4, height = 4)
img_cropped <- cropcircles::crop_hex(tmp)

sticker(img_cropped,
  package = "national.highways",
  s_x = 1,
  s_y = 1,
  p_x = 1,
  p_y = 1.25,
  p_size = 4,
  p_family = "Outfit",
  p_fontface = "bold",
  p_color = "#011e41",
  s_width = 0.85,
  s_height = 0.85,
  h_fill = "#74A4BC",
  h_color = "#011e41",
  h_size = 1,
  asp = 1,
  filename = "national-highways/logo.png"
)
