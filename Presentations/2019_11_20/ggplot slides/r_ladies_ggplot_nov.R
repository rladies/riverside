## ----setup, include=FALSE------------------------------------------------
options(htmltools.dir.version = FALSE)
knitr::opts_chunk$set(fig.retina=3)
library(ggplot2)
data(iris)



## ---- echo=FALSE---------------------------------------------------------
knitr::include_graphics("logo.png")


## ---- echo=FALSE, out.height='50%', out.width="70%"----------------------
knitr::include_graphics("RStudioView.png" )


## ---- eval=F-------------------------------------------------------------
## function(argument1 = value1, argument2 = value2)


## ---- eval=F-------------------------------------------------------------
## ?merge


## ---- eval=F-------------------------------------------------------------
## #  use hashtags to annotate your code
object_name <- c(1:9)
object_mat <- matrix(object_name, 3, 3)
object_mat[1, 3]
some_data <- data(iris)
iris$Sepal.Length

str(iris)
class(iris)

ls()
rm()


## ---- eval=FALSE---------------------------------------------------------
install.packages("ggplot2")
library(ggplot2)


## ---- echo=FALSE---------------------------------------------------------
knitr::include_graphics("all_layers.png")


## ------------------------------------------------------------------------
data(iris)
str(iris)

## ----echo=F--------------------------------------------------------------
knitr::kable(head(iris), format = 'html')


## ---- echo=FALSE---------------------------------------------------------
knitr::include_graphics("layers123.png")


## ----plot1, fig.height=3, fig.width=5------------------------------------
ggplot(iris, aes(Sepal.Length, Sepal.Width)) 



## ----plot2, fig.height=4, fig.width=8------------------------------------
ggplot(iris, aes(Sepal.Length, Sepal.Width)) + 
  geom_point()


## ----plot3, fig.height=4, fig.width=8------------------------------------
p1 <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point()
print(p1)


## ----plot4, fig.height=5, fig.width=8------------------------------------
p1 + geom_smooth(method="lm", se=F)


## ---- echo=FALSE---------------------------------------------------------
  knitr::include_graphics("tidyverse_screenshot.png")


## ----plot5, fig.height=4.5, fig.width=8----------------------------------
p1 + 
  ylab("Width") + xlab("Length") + ylim(0,6) + scale_colour_hue(h = c(180, 270))


## ----plot6, fig.height=4, fig.width=8------------------------------------
p1 + facet_grid(cols=vars(Species))


## ----plot7, fig.height=4, fig.width=8------------------------------------
p1 + theme_classic()


## ----plot8, fig.height=4, fig.width=8------------------------------------
p1 + theme_classic() + theme(legend.position = "none") + 
  theme(axis.text = element_text(color = "purple", size = rel(1.5)),
        axis.title = element_text(color = "darkorchid4", size=rel(2))) 


## ----plot_extra1, fig.height=4, fig.width=8------------------------------
p2 <- ggplot(iris, aes(Species, Sepal.Width, color = Species)) + 
  geom_point(position = position_jitter(width = 0.1, height = 0.1)) +
  annotate("text", x = 3, y = 4, label = "I know this is ugly but...") 
print(p2)

