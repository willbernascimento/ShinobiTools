#'More one ggplot theme and colours
#'
#'A custom flat ggplot theme and colorfull pallete.
#'
#'@param angle Optional. Change the default angle of axis.x text
#'@export theme_flat
#'@export minhas_cores
#'
#'@example
#'
#'# ggplot(data,aes(x))+geom_bar()+theme_flat()
#'

theme_flat <- function(angle=NULL,...){
  angle=angle
  theme() %+replace%
    theme(rect = element_rect(colour = "black", fill = "white"),
        line = element_line(colour = "black"), text = element_text(colour = "#757575"),
        plot.title = element_text(face = "plain", size = rel(20/12),hjust = 0, colour = "#757575"),
        plot.subtitle = element_text(hjust = 0,size = rel(1), face = "plain", colour = "#757575"),
        plot.caption = element_text(hjust = 0, size = rel(1), face = "plain", colour = "#757575"),
        panel.background = element_rect(fill = 'gray99', colour = NA),
        panel.border = element_rect(fill = NA, colour = NA),
        strip.text = element_text(hjust = 0, size = rel(1), colour = "#666666", face = "plain"),
        strip.background = element_rect(colour = NA, fill = NA),
        axis.title.x = element_blank(),
        axis.title = element_text(face = "bold", colour = "#333D79", size = rel(1)),
        axis.text = element_text(face = "plain", colour = "#333D79", size = rel(1)),
        axis.text.x = element_text(angle = angle),
#        axis.line = element_line(colour = "black"),
        axis.line.y = element_blank(), axis.ticks = element_blank(),
        panel.grid.major = element_line(colour = 'gray80'),
        panel.grid.minor = element_line(colour = 'gray80'),
        legend.background = element_rect(colour = NA),
        legend.text = element_text(size = rel(1), colour = "#757575"),
        legend.title = element_text(size = rel(1), colour = "#666666",face = "plain"),
        legend.key = element_rect(colour = NA),
        legend.position = "right",
        legend.direction = "vertical")
}
