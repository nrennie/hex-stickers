library(hexSticker)
library(cropcircles)
library(ggplot2)
library(magick)
library(showtext)

font_add_google("Archivo Black")
showtext_auto()
showtext_opts(dpi = 300)

img_bw <- magick::image_read(
  "https://images.unsplash.com/photo-1513635269975-59663e0ac1ad"
  ) |>
  magick::image_quantize(colorspace = "gray") |> 
  magick::image_blur()
img_cropped <- cropcircles::crop_hex(img_bw)
sticker(img_cropped,
        package = "LondonMarathon",
        s_x = 1,
        s_y = 1,
        s_width = 0.85,
        s_height = 0.85,
        p_y = 1,
        p_color = "#d40000",
        p_size = 4.5,
        p_family = "Archivo Black",
        p_fontface = "bold",
        h_fill = "black",
        h_color = "#d40000",
        h_size = 1.3,
        asp = 1,
        url = "Image: unsplash.com",
        u_color = "white",
        filename = "LondonMarathon/logo.png"
)
