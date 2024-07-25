library(hexSticker)
library(ggplot2)
library(showtext)

font_add_google("Source Sans 3")
showtext_auto()
showtext_opts(dpi = 300)

p <- ggplot() + 
  geom_col(
    data = data.frame(
      x = c(1, 2, 3),
      y = c(2, 3, 1)
    ),
    mapping = aes(x = x, y = y),
    fill = "#005573",
    colour = "#005573",
    width = 0.5
  ) +
  scale_x_continuous(limits = c(0.5, 3.5)) +
  scale_y_continuous(expand = expansion(0, 0),
                     limits = c(0, 4)) +
  theme_void() +
  theme(
    axis.line = element_line(colour = "#005573", linewidth = 0.8,
                             lineend = "square")
  )

sticker(p,
        package = "RSSthemes",
        s_x = 1,
        s_y = 1.25,
        p_x = 1,
        p_y = 0.62,
        p_color = "#005573",
        p_family = "Source Sans 3",
        p_fontface = "bold",
        p_size = 7,
        s_width = 0.75,
        s_height = 0.75,
        h_fill = "#d3a435",
        h_color = "#005573",
        h_size = 1.3,
        asp = 1,
        filename = "RSSthemes/logo.png"
)
