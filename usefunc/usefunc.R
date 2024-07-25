library(hexSticker)
library(ggplot2)
library(showtext)

font_add(
  family = "Magneto",
  regular = "C:/WINDOWS/Fonts/MAGNETOB.TTF",
)
showtext_auto()
showtext_opts(dpi = 300)

p <- ggplot() + theme_void()

sticker(p,
        package = "usefunc",
        s_x = 1,
        s_y = 1,
        p_x = 1,
        p_y = 1,
        p_color = "#ffcc00",
        p_family = "Magneto",
        p_fontface = "bold",
        p_size = 9,
        s_width = 0.85,
        s_height = 0.85,
        h_fill = "#ff6600",
        h_color = "#ffcc00",
        h_size = 1.3,
        asp = 1,
        filename = "usefunc/logo.png"
)
