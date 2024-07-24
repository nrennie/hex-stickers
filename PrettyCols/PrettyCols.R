library(hexSticker)
library(aRt)
library(cropcircles)
library(ggplot2)
library(showtext)

font_add_google("Fraunces")
showtext_auto()
showtext_opts(dpi = 300)

p <- aRt::tiles(
  col_palette = PrettyCols::prettycols("Dark")
)
ggplot2::ggsave(tmp, p, device = "png", width = 4, height = 4)
img_cropped <- cropcircles::crop_hex(tmp)
sticker(img_cropped,
        package = "PrettyCols",
        s_x = 1,
        s_y = 1,
        p_x = 1,
        p_y = 1,
        p_family = "Fraunces",
        p_fontface = "bold",
        p_size = 7,
        s_width = 0.85,
        s_height = 0.85,
        h_fill = "#293d51",
        h_color = "#293d51",
        h_size = 1,
        asp = 1,
        filename = "PrettyCols/logo.png"
)
