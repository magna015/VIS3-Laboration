require(GGally)
require(readxl)

#sets the scripts working directory, where all
#data is taken from (by default) and saved into
setwd("//ad.liu.se/home/magna015/Documents/Grundläggande Statistik/VIS3/1")

#imports the data from the file into a variable
data <- read_xlsx("Husdjur.xlsx")

#uses the data to make a scatter plot matrix by
#"house pets", adds and justifys the title as
#as well as colorizing the data points
ggpairs(data = data,
        columns = 3:5,
        title = "Punktdiagramsmatris av kor, får och svin",
        upper = list(continuous = "points"),
        diag = list(continuous = "blankDiag"),
        lower = list(continuous = "blank"),
        axisLabels = "none",
        mapping = aes(color = Region)
        ) +
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))
