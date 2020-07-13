


library(ggplot2)
x = c(3, 5, 4)
y = 2:4
z = factor(1:3)
d = data.frame(x, y, z)


n = 6
yshift = scales::trans_new("try",
                           transform = function(x) {x - n},
                           inverse = function(x) {x + n})



ggplot(d) + 
  geom_bar(aes(x = y, y = x, fill = z), stat = "identity", show.legend = F) + 
  #ylim(c(0, 18)) + 
  xlim(c(0, 22)) +
  scale_fill_manual(values = c("#6d7993", "#9099a2", "#d5d5d5")) +
  theme_void() +
  theme(panel.background = element_rect(fill = "#fffaf5")) +
  scale_y_continuous(trans = yshift)



ggsave(filename = "./themes/hugo-ivy/static/img/background.png",
       width = 8, height = 5, dpi = 500)


df <- data.frame(
  x = rep(c(2, 5, 7, 9, 12), 2),
  y = rep(c(1, 2), each = 5),
  z = factor(rep(1:5, each = 2)),
  w = rep(diff(c(0, 4, 6, 8, 10, 14)), 2)
)
ggplot(df, aes(x, y, width = w)) +
  geom_tile(aes(fill = z), colour = "grey50")

ggplot(df, aes(xmin = x - w / 2, xmax = x + w / 2, ymin = y, ymax = y + 1)) +
  geom_rect(aes(fill = z), colour = "grey50")


# the plot ----------------------------------------------------------------

library(showtext)

trace(grDevices::png, exit = quote({
  showtext::showtext_begin()
}), print = FALSE)

font_add_google("Qwigley", "alegreya")
#font_add_google("Markazi Text", "markazi")
showtext_auto()

df = data.frame(
  xmin = c(0, 1.1, 2.2, 3.3, 4.4, 5.5, 6.6),
  xmax = c(1, 2.1, 3.2, 4.3, 5.4, 6.5, 7.6),
  ymin = c(1994, 2006, 2013, 2013, 2014, 2015, 2019),
  ymax = c(2020, 2020, 2018, 2020, 2020, 2020, 2020),
  who = c("family", "maestros", "du", "cavaliers", "started coding in R", "a new life", "married")
)

lighter_color = "#d6d6d6"
accent = "#374E60"

ggplot(df, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax)) +
  geom_rect(aes(fill = who), show.legend = FALSE) +
  theme_classic(base_family = "alegreya", base_size = 24) +
  #theme_void() +
  scale_fill_manual(values = c("family" = lighter_color,
                               "maestros" = lighter_color,
                               "du" = lighter_color,
                               "cavaliers" = lighter_color,
                               "started coding in R" = accent,
                               "a new life" = accent,
                               "married" = lighter_color)) +

  scale_y_continuous(breaks = c(1994, 2020), expand = expansion(mult = c(.45, 1.5))) +
  scale_x_continuous(limits = c(0, 70), expand = expansion(mult = 0)) +
  #xlim(0, 40) +
  #ylim(1985, 2050) +
  
  # annotate(
  #   geom = "segment", x = 4.9, y = 2014, xend = 4.9, yend = 2012.5,
  #   color = "#752b3c"
  # ) +
  # 
  # annotate(geom = "text", x = 0.2, y = 2022, label = "My timeline of thanks",
  #          hjust = .01, family = "alegreya", size = 7, color = "#888888") +
  # 
  # annotate(geom = "text", x = 4.6, y = 2011.8, label = "2014, Started coding in R!",
  #          hjust = .01, family = "alegreya", size = 7, color = "#999999") +
  # 
  # annotate(geom = "text", x = 5.7, y = 2014, label = "2015, Alhamdulillah",
  #          hjust = .01, family = "alegreya", size = 7, color = "#999999") +
  #coord_cartesian(xlim = c(0, 40), ylim = c(1985, 2040), expand = FALSE) +
  theme(
    axis.line.y.left = element_blank(),
    axis.line = element_blank(),
    axis.ticks = element_blank(),
    axis.text.x = element_blank(),
    axis.text.y = element_blank(),
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.border = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(l = 50),
    plot.background = element_rect(fill = "#fcf6ef"),
    panel.background = element_rect(fill = "#fcf6ef")
  )

ggsave(filename = "./themes/hugo-ivy/static/img/background.png",
       width = 8, height = 5, dpi = 350)



font_add_google("Nanum Pen Script", "alegreya")

# Nanum Pen Script, Neucha

# second plot, in the about section ---------------------------------------

ggplot(df, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax)) +
  geom_rect(aes(fill = who), show.legend = FALSE) +
  theme_classic(base_family = "alegreya", base_size = 22) +
  #theme_void() +
  scale_fill_manual(values = c("family" = "#cccccc",
                               "maestros" = "#cccccc",
                               "du" = "#cccccc",
                               "cavaliers" = "#cccccc",
                               "started coding in R" = "#752b3c",
                               "a new life" = "#752b3c",
                               "married" = "#cccccc")) +
  annotate(
    geom = "segment", x = 1.6, y = 2006, xend = 1.6, yend = 2002,
    color = "#918D8F"
  ) +
  scale_y_continuous(breaks = c(1994, 2020), expand = expansion(mult = c(.45, 1.5))) +
  scale_x_continuous(limits = c(0, 70), expand = expansion(mult = 0)) +
  #xlim(0, 40) +
  #ylim(1985, 2050) +
  annotate(geom = "text", x = 0.2, y = 2022, label = "",
           hjust = .01, family = "alegreya", size = 7, color = "#918D8F") +
  
  annotate(geom = "text", x = 1.6, y = 2005, label = "2006 - current Maestros",
           hjust = .01, family = "alegreya", size = 7, color = "#918D8F") +
  
  annotate(geom = "text", x = 4.6, y = 2013, label = "2015, Alhamdulillah, a new life",
           hjust = .01, family = "alegreya", size = 7, color = "#918D8F") +
  #coord_cartesian(xlim = c(0, 40), ylim = c(1985, 2040), expand = FALSE) +
  theme(
    axis.line.y.left = element_blank(),
    axis.line = element_blank(),
    axis.ticks = element_blank(),
    axis.text.x = element_blank(),
    #axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.border = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(l = 50),
    plot.background = element_rect(fill = "#fcf6ef"),
    panel.background = element_rect(fill = "#fcf6ef")
  )

ggsave(filename = "./themes/hugo-ivy/static/img/background.png",
       width = 8, height = 5, dpi = 350)

