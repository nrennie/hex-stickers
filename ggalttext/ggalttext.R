library(hexSticker)
library(ggplot2)
library(showtext)

font_add_google("Courier Prime")
showtext_auto()
showtext_opts(dpi = 300)

p <- ggplot() + theme_void()

sticker(p,
        package = '<img alt="ggalttext">',
        s_x = 1,
        s_y = 1,
        p_x = 1,
        p_y = 1,
        p_color = "#14c8c8",
        p_family = "Courier Prime",
        p_fontface = "bold",
        p_size = 3,
        s_width = 0.85,
        s_height = 0.85,
        h_fill = "black",
        h_color = "#14c8c8",
        h_size = 1.3,
        asp = 1,
        filename = "ggalttext/logo.png"
)
