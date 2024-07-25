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


# Shatter -----------------------------------------------------------------

p <- aRt::shatter(bg_col = "transparent", colour = "#98C1D9") +
  theme(plot.margin = margin(-20, -20, -20, -20))
tmp <- tempfile()
ggplot2::ggsave(tmp, p, device = "png", width = 4, height = 4)
img_cropped <- cropcircles::crop_hex(tmp)
sticker(img_cropped,
  package = "",
  s_x = 1,
  s_y = 1,
  s_width = 0.85,
  s_height = 0.85,
  h_fill = "#3D5A80",
  h_color = "#EE6C4D",
  h_size = 1,
  asp = 1,
  filename = "Rtistry/shatter.png"
)


# Random tessellation -----------------------------------------------------

p <- aRt::random_tessellation(
  n_x = 17, n_y = 17,
  bg_col = "transparent",
  deg_jitter = 0.3,
  linewidth = 1.2,
  line_col = "#62d1ff",
  col_palette = PrettyCols::prettycols("Neon")
) +
  theme(plot.margin = margin(-20, -20, -20, -20))
tmp <- tempfile()
ggplot2::ggsave(tmp, p, device = "png", width = 4, height = 4)
img_cropped <- cropcircles::crop_hex(tmp)
sticker(img_cropped,
  package = "",
  s_x = 1,
  s_y = 1,
  s_width = 0.85,
  s_height = 0.85,
  h_fill = "#62d1ff",
  h_color = "#62d1ff",
  h_size = 1.3,
  asp = 1,
  filename = "Rtistry/random_tessellation.png"
)


# Fractals ----------------------------------------------------------------

p <- aRt::fractals(
  col_palette = rev(MetBrewer::met.brewer(
    "Benedictus",
    n = 25
  )),
  left = -2,
  right = 2,
  y_param = 2,
  dist_max = 4
)
sticker(p,
  package = "",
  s_x = 1,
  s_y = 1,
  s_width = 1.3,
  s_height = 1.3,
  h_color = rev(MetBrewer::met.brewer(
    "Benedictus",
    n = 25
  ))[25],
  h_fill = rev(MetBrewer::met.brewer(
    "Benedictus",
    n = 25
  ))[1],
  h_size = 1,
  filename = "Rtistry/fractals.png"
)
