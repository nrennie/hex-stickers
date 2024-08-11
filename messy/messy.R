library(hexSticker)
library(ggplot2)
library(showtext)

font_add_google("Source Sans 3")
showtext_auto()
showtext_opts(dpi = 300)


p <- aRt::chaos(circle_line_col = "grey50", bg_col = "transparent")

sticker(p,
        package = "messy",
        s_x = 1,
        s_y = 1,
        p_x = 1,
        p_y = 1,
        p_color = "black",
        p_family = "Source Sans 3",
        p_fontface = "bold",
        p_size = 9,
        s_width = 1.6,
        s_height = 1.6,
        h_fill = "white",
        h_color = "black",
        h_size = 1.2,
        filename = "messy/logo.png"
)
