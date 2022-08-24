## Exercise: 6
## Date: 07-29-2022
## Author: James Laginess

# Setup -------------------------------------------------------------------
gapminder <- read.delim("http://www.finley-lab.com/files/data/gapminder.tsv", header = TRUE)
str(gapminder)
str(gapminder)

library(ggplot2)

continent <- gapminder$continent
p <- ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  scale_x_log10() + 
  labs(x = "per capita GDP (log10 scaled)", y = "life expectancy")


# TODO 6.1: plot 1 

p + geom_point(size=1, aes(color= continent))

# TODO 6.2: plot 2 

p + geom_point(size=1, aes(color= continent)) + stat_smooth(method = lm, se=FALSE)
  
# TODO 6.3: plot 3 

p + geom_point(size=1, aes(color= continent)) + stat_smooth(method = lm, se=FALSE, color="green", size=3)

# TODO 6.4: plot 4 

p + geom_point(size=1, aes(color= continent)) + stat_smooth(method = lm, se=FALSE, aes(color= continent))


# TODO 6.5: plot 5 

p + geom_point(size=1, aes(color= continent)) + stat_smooth(method = loess, se=FALSE, aes(color= continent))


# TODO 6.6: plot 6 

r <- ggplot(data = subset(gapminder, country == "Rwanda"), aes(x = year, y = lifeExp))
r + geom_line()
  
  #geom_line(aes(country))

# TODO 6.7: plot 7 

r + geom_point() + geom_line()

# TODO 6.8: plot 8 

five_countries <- c("China", "United States", "Finland", "Germany", "Norway")
ggplot(data = subset(gapminder, country %in% five_countries), aes(x = year, y = lifeExp, color = country)) + 
  geom_line() + 
  geom_point()

