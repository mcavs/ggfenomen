draw_key_fenomen <-  function(data, params, size) {
  filename <- system.file(paste0(data$fenomen, ".png"), package = "ggfenomen", mustWork = TRUE)
  img <- as.raster(png::readPNG(filename))
  aspect <- dim(img)[1]/dim(img)[2]
  grid::rasterGrob(image = img)
}

# fenomenGrob
fenomenGrob <- function(x, y, size, fenomen = "taksim", geom_key = list(laik = "laik.png",
                                                                        taksim = "taksim.png",
                                                                        artiz = "artiz.png",
                                                                        komutan = "komutan.png",
                                                                        ankara = "ankara.png")) {

  filename <- system.file(geom_key[[unique(fenomen)]], package = "ggfenomen", mustWork = TRUE)
  img <- as.raster(png::readPNG(filename))

  # rasterGrob
  grid::rasterGrob(x      = x,
                   y      = y,
                   image  = img,
                   height = size * ggplot2::unit(20, "mm"))
}

GeomFenomen <- ggplot2::ggproto(`_class` = "GeomFenomen",
                                `_inherit` = ggplot2::Geom,
                                required_aes = c("x", "y"),
                                non_missing_aes = c("size", "fenomen"),
                                default_aes = ggplot2::aes(size = 1, fenomen = "laik", shape  = 19,
                                                          colour = "black",   fill   = NA,
                                                          alpha  = NA,
                                                          stroke =  0.5,
                                                          scale = 5,
                                                          image_filename = "laik"),

                                draw_panel = function(data, panel_scales, coord, na.rm = FALSE) {
                                  coords <- coord$transform(data, panel_scales)
                                  ggplot2:::ggname(prefix = "geom_fenomen",
                                                  grob = fenomenGrob(x = coords$x,
                                                                    y = coords$y,
                                                                    size = coords$size,
                                                                    fenomen = coords$fenomen))
                               },

                               draw_key = draw_key_fenomen)

#' @title Fenomen layer
#' @description The geom is used to add fenomen to plots. See ?ggplot2::geom_points for more info.
#' @inheritParams ggplot2::geom_point
#' @examples
#'
#' # install.packages("ggplot2")
#'library(ggplot2)
#'
#' ggplot(mtcars) +
#'  geom_fenomen(aes(mpg, wt), fenomen = "laik") +
#'  theme_bw()
#'
#' ggplot(mtcars) +
#'  geom_fenomen(aes(mpg, wt), fenomen = "taksim") +
#'  theme_bw()
#'
#' @importFrom grDevices as.raster
#' @export
geom_fenomen <- function(mapping = NULL,
                         data = NULL,
                         stat = "identity",
                         position = "identity",
                         ...,
                         na.rm = FALSE,
                         show.legend = NA,
                         inherit.aes = TRUE) {

  ggplot2::layer(data = data,
                 mapping = mapping,
                 stat = stat,
                 geom = GeomFenomen,
                 position = position,
                 show.legend = show.legend,
                 inherit.aes = inherit.aes,
                 params = list(na.rm = na.rm, ...))
}




