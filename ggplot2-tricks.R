# ggplot2 examples - I will later organize this into an .md file but I will also leave it as a plain code.


# How to deal with legend lables with manual shape and colors. ----------
scale_shape_manual("Niche",
                   values = c(19, 2),
                   labels = c("Fert", "Unfert")
)

scale_colour_manual(
  values = paletteCB6,
  labels = c("Escanaba", "Hancock", "Lake City", "Lux Arbor", "Rhineland")
)

# How to add a color gradient to an object of class *Date* from type -----------
# "as.Date".
scale_color_gradient(
  name = NULL,
  trans = "date",
  low = "#B2DF8A",
  high = "#33A02C"
)

scale_color_gradient(
  name = NULL,
  trans = "date",
  low = "#B2DF8A",
  high = "#33A02C",
  guide = guide_colourbar(direction = "vertical")
)

# How to modify axis decimals in an ordination, e.g. form metaMDS. -----------
scale_x_continuous(labels = scales::number_format(accuracy = 0.05))
scale_y_continuous(labels = scales::number_format(accuracy = 0.05))

# How to use *guides* to modify legend appearence. ------------
guides(fill = "none",
       color = guide_legend(nrow = 2, title="Time", order = 1),
       shape = guide_legend(nrow = 2, title=NULL, order = 2))

# How to reduce space between multiple legends. ------------
theme(legend.margin = margin(0,-0.5, 0, 0, unit = "cm"))

# How to get default ggplot font and colors. ------------
calc_element("axis.text.x", theme_classic())
calc_element("axis.line", theme_classic())

# How to generate colors form two extreme colors and visualize
palette <- colorRampPalette(c("#FFFF99", "#B15928"))(6)
pie(rep(1, length(palette)), labels = sprintf("%d (%s)",
    seq_along(palette),palette), col = palette)

# How to modify legend sizes, e.g. stretch the legenend if gradient
theme(legend.key.height = unit(0.5, "cm"), legend.key.width = unit(0.3, "cm"))

# How to invert axes direction of a ggplot
plot_pcoa + scale_x_reverse() + scale_y_reverse()

# How to use expression, with R objects, insde axis labels
labs(y=as.expression(paste("Axis1",var_axex_fungi[1],"%"), parse=TRUE)))
