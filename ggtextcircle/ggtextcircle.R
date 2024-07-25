library(hexSticker)
library(ggplot2)
library(showtext)
library(ggtextcircle)

font_add_google("Courier Prime")
showtext_auto()
showtext_opts(dpi = 300)

p <- ggplot() + 
  geom_textcircle(
    data = data.frame(
      label = rep("ggplot2", 50)
    ),
    mapping = aes(label = label),
    colour = "white",
    size = 1.2
  ) +
  coord_fixed() +
  scale_x_continuous(limits = c(-3.6, 3.6)) + 
  scale_y_continuous(limits = c(-3.6, 3.6)) +
  theme_void()

sticker(p,
        package = "{ggtextcircle}",
        s_x = 0.92,
        s_y = 1,
        p_x = 1.4,
        p_y = 1,
        p_color = "white",
        p_family = "Courier Prime",
        p_fontface = "bold",
        p_size = 2.5,
        s_width = 1.4,
        s_height = 1.4,
        h_fill = "#2ba84a",
        h_color = "#248232",
        h_size = 1.3,
        asp = 1,
        filename = "ggtextcircle/logo.png"
)
