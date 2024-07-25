library(hexSticker)
library(ggplot2)
library(showtext)
library(emojifont)

font_add_google("Passion One")
showtext_auto()
showtext_opts(dpi = 300)

d <- data.frame(
  x = c(0, 2, -2),
  y = c(0, 1, 1),
  size = c(14, 11, 11),
  label = rep(fontawesome(c("fa-user")), 3)
)

p <- ggplot(d, aes(x, y, label = label, size = size)) +
  geom_text(
    family = "fontawesome-webfont",
    color = "#00441b"
  ) +
  coord_fixed(clip = "off") +
  scale_size_identity() +
  scale_x_continuous(limits = c(-2.5, 2.5)) +
  scale_y_continuous(limits = c(-2.5, 2.5)) +
  theme_void() +
  theme(legend.position = "none")
p

sticker(p,
  package = "WBLifeExpectancy",
  s_x = 1,
  s_y = 0.8,
  p_x = 1,
  p_y = 1.4,
  p_color = "#00441b",
  p_family = "Passion One",
  p_fontface = "bold",
  p_size = 5,
  s_width = 0.9,
  s_height = 0.9,
  h_fill = "#a6dba0",
  h_color = "#00441b",
  h_size = 1.3,
  asp = 1,
  filename = "WBLifeExpectancy/logo.png"
)
