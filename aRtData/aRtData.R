library(hexSticker)
library(aRt)
library(cropcircles)
library(ggplot2)
library(showtext)
library(rcartocolor)

font_add_google("Bowlby One")
showtext_auto()
showtext_opts(dpi = 300)

p <- aRt::bricks(
  n_y = 20,
  colours = rcartocolor::carto_pal(7, "Sunset")
) +
  annotate(
    "rect", xmin = 0, xmax = 100, ymin = 5, ymax = 105,
    fill = alpha("gray97", 0.5), colour = NA
  ) +
  theme(plot.margin = margin(-20, -20, -20, -20))
tmp <- tempfile()
ggplot2::ggsave(tmp, p, device = "png", width = 4, height = 4)
img_cropped <- cropcircles::crop_hex(tmp)
sticker(img_cropped,
        package = "aRtData",
        s_x = 1,
        s_y = 1,
        p_x = 1,
        p_y = 1,
        p_family = "Bowlby One",
        p_fontface = "bold",
        p_color = "#403a73",
        p_size = 8,
        s_width = 0.85,
        s_height = 0.85,
        h_fill = "#403a73",
        h_color = "#403a73",
        h_size = 1,
        asp = 1,
        filename = "aRtData/logo.png"
)
