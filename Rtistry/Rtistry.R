library(hexSticker)
library(aRt)
library(cropcircles)
library(ggplot2)


# Wander ------------------------------------------------------------------

p <- aRt::wander(
  bg_col = "transparent"
)
sticker(p,
  package = "",
  s_x = 1,
  s_y = 1,
  s_width = 1.7,
  s_height = 1.7,
  h_fill = "#462255",
  h_color = "#FF8811",
  h_size = 1,
  filename = "Rtistry/wander.png"
)


# Bullseye ----------------------------------------------------------------

p <- aRt::bullseye(
  bg_col = "transparent",
  s = 2024
)
sticker(p,
        package = "",
        s_x = 0.97,
        s_y = 0.97,
        s_width = 1,
        s_height = 1,
        h_fill = "white",
        h_color = "black",
        h_size = 1,
        filename = "Rtistry/bullseye.png"
)


# Tiles -------------------------------------------------------------------

p <- aRt::tiles()
tmp <- tempfile()
ggplot2::ggsave(tmp, p, device = "png", width = 4, height = 4)
img_cropped <- cropcircles::crop_hex(tmp)
sticker(img_cropped,
        package = "",
        s_x = 1,
        s_y = 1,
        s_width = 0.85,
        s_height = 0.85,
        h_fill = "#67322e",
        h_color = "#67322e",
        h_size = 1,
        asp = 1,
        filename = "Rtistry/tiles.png"
)
