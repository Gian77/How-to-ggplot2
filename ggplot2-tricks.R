# Examples

# How to deal with legend lables with manual shape and colors

scale_shape_manual("Niche",
                   values = c(19, 2),
                   labels = c("Fert", "Unfert")
)

scale_colour_manual(
  values = paletteCB6,
  labels = c("Escanaba", "Hancock", "Lake City", "Lux Arbor", "Rhineland")
)
