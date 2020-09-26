


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

#font_add_google("Nanum Pen Script", "ibm")
#font_add_google("Markazi Text", "markazi")
showtext_auto()

c_yr <- 2020

df = data.frame(
  xmin = c(0, 1.1, 2.2, 3.3, 4.4, 5.5, 6.6,
           7.7, 8.8, 9.9, 11, 12.1),
  xmax = c(1, 2.1, 3.2, 4.3, 5.4, 6.5, 7.6,
           8.7, 9.8, 10.9, 12, 13.1),
  ymin = c(1994, 1994, 2006, 2011, 2013, 2013, 2014,
           2017, 2017, 2018, 2019, 2020),
  ymax = c(c_yr, c_yr, c_yr, 2013, 2018, c_yr, c_yr,
           c_yr, c_yr, 2019, c_yr, 2020),
  who = c("_", "family", "maestros", "ndc", "du", "cavaliers", "started coding in R",
          "shiny", "freelance", "nadine_west", "open_source", "shiny_contest")
)


greyColor = "#918D8F"
redColor = "#ed5032"
lighter_color = "#918D8F"
accent = "#ed5032"

ggplot(df, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax)) +
  geom_rect(aes(fill = who), show.legend = FALSE) +
  theme_classic(base_family = "ibm", base_size = 24) +
  #theme_void() +
  scale_fill_manual(values = c("_" = "#FCF6EB",
                               "family" = "#CCD3E3",
                               "maestros" = "#7E8EB2",
                               "ndc" = "#7E8EB2",#2F4159
                               "du" = "#50707B",
                               "cavaliers" = "#50707B",
                               "started coding in R" = "#447099",
                               "shiny" = "#4E94CF",
                               "freelance" = "#61C073",
                               "nadine_west" = "#EF476F",
                               "open_source" = "#C2A370",
                               "shiny_contest" = "#4E94CF")) +
  #scale_y_continuous(breaks = c(1994, 2020), expand = expansion(mult = c(.45, 1.5))) +
  #scale_x_continuous(limits = c(0, 70), expand = expansion(mult = 0)) +
  #xlim(0, 40) +
  #ylim(1985, 2050) +
  
  # annotate(
  #   geom = "segment", x = 4.9, y = 2014, xend = 4.9, yend = 2012.5,
  #   color = "#752b3c"
  # ) +
  # 
  # annotate(geom = "text", x = 0.2, y = 2022, label = "My timeline of thanks",
  #          hjust = .01, family = "ibm", size = 7, color = "#888888") +
  # 
  # annotate(geom = "text", x = 4.6, y = 2011.8, label = "2014, Started coding in R!",
  #          hjust = .01, family = "ibm", size = 7, color = "#999999") +
  # 
  # annotate(geom = "text", x = 5.7, y = 2014, label = "2015, Alhamdulillah",
  #          hjust = .01, family = "ibm", size = 7, color = "#999999") +
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
    plot.background = element_rect(fill = "#fcf6ef"),
    panel.background = element_rect(fill = "#fcf6ef"),
  )

ggsave(filename = "./themes/hugo-ivy/static/img/background-header.png",
       width = 2, height = 2)



font_add_google("IBM Plex Sans Condensed", "ibm", regular.wt = 500)

# Nanum Pen Script, Neucha

# second plot, in the about section ---------------------------------------

ggplot(df, aes(xmin = xmin, xmax = xmax, ymin = ymin, ymax = ymax)) +
  geom_rect(aes(fill = who), show.legend = FALSE) +
  theme_classic(base_family = "ibm", base_size = 24) +
  #theme_void() +
  scale_fill_manual(values = c("_" = "#FCF6EB",
                               "family" = "#CCD3E3",
                               "maestros" = "#7E8EB2",
                               "ndc" = "#7E8EB2",#2F4159
                               "du" = "#50707B",
                               "cavaliers" = "#50707B",
                               "started coding in R" = "#447099",
                               "shiny" = "#4E94CF",
                               "freelance" = "#61C073",
                               "nadine_west" = "#EF476F",
                               "open_source" = "#C2A370",
                               "shiny_contest" = "#4E94CF")) +
  annotate(
    geom = "segment", x = 2.7, y = 2006, xend = 2.7, yend = 2002,
    color = "#7E8EB2", size = .1
  ) +
  
  annotate(
    geom = "segment", x = 3.8, y = 2011, xend = 3.8, yend = 2004,
    color = "#7E8EB2", size = .1
  ) +
  
  annotate(
    geom = "segment", x = 4.9, y = 2013, xend = 4.9, yend = 2006,
    color = "#50707B", size = .1
  ) +
  
  annotate(
    geom = "segment", x = 6, y = 2013, xend = 6, yend = 2008,
    color = "#50707B", size = .1
  ) +
  
  annotate(
    geom = "segment", x = 7.1, y = 2014, xend = 7.1, yend = 2010,
    color = "#447099", size = .1
  ) +
  
  annotate(
    geom = "segment", x = 8.2, y = 2017, xend = 8.2, yend = 2012,
    color = "#4E94CF", size = .1
  ) +
  
  annotate(
    geom = "segment", x = 9.3, y = 2017, xend = 9.3, yend = 2014,
    color = "#61C073", size = .1
  ) +
  
  annotate(
    geom = "segment", x = 10.4, y = 2018, xend = 10.4, yend = 2016,
    color = "#EF476F", size = .1
  ) +
  
  annotate(
    geom = "segment", x = 11.5, y = 2019, xend = 11.5, yend = 2018,
    color = "#C2A370", size = .1
  ) +
  scale_y_continuous(breaks = c(1994, 2020), expand = expansion(mult = c(.45, 1.5))) +
  scale_x_continuous(limits = c(0, 100), expand = expansion(mult = 0)) +
  #xlim(0, 40) +
  #ylim(1985, 2050) +
  annotate(geom = "text", x = 5.2, y = 2022, label = "The Resume Plot",
           hjust = .01, family = "ibm", size = 6, color = "#918D8F") +
  
  annotate(geom = "text", x = 1, y = 1993, label = "Family",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 2.6, y = 2001, label = "2006, Maestros",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 3.7, y = 2003, label = "2011 - 13, NDC",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 4.8, y = 2005, label = "2013 - 18, Graduation",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 5.9, y = 2007, label = "2013, Cavaliers",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 7, y = 2009, label = "2014, Introduced to R",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 8.1, y = 2011, label = "2017, First Shiny App",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 9.2, y = 2013, label = "2017, Freelance Data Analyst",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 10.3, y = 2015, label = "2018 - 19, Data Analyst @ Nadine West",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 11.4, y = 2017, label = "2019, Open source projects",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 12.5, y = 2019, label = "2020, Shiny for Production",
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  annotate(geom = "text", x = 3.2, y = 1998, label = '"Ghareeb wo hai jis ka koi dost na ho."',
           hjust = .01, family = "ibm", size = 5, color = "#918D8F") +
  
  #coord_cartesian(xlim = c(0, 40), ylim = c(1985, 2040), expand = FALSE) +
  theme(
    axis.line.y.left = element_blank(),
    axis.line = element_blank(),
    axis.ticks = element_blank(),
    axis.text.x = element_blank(),
    axis.text.y = element_text(size = 12),
    axis.title.x = element_blank(),
    axis.title.y = element_blank(),
    panel.border = element_blank(),
    panel.grid = element_blank(),
    plot.margin = margin(l = 50),
    plot.background = element_rect(fill = "#fcf6ef"),
    panel.background = element_rect(fill = "#fcf6ef")
  )

ggsave(filename = "./themes/hugo-ivy/static/img/background.png",
       width = 9, height = 5)

