#example plotly object to test
install.packages(c("plotly", "htmlwidgets"))

library(plotly)

# create some data
df <- data.frame(x = rnorm(1000), y = rnorm(1000))

# create a plot
p <- plot_ly(df, x = ~x, y = ~y, type = "scatter", mode = "markers")

# Save the plot to a standalone HTML file
#htmlwidgets::saveWidget(p, "/path/to/your/directory/my_plot.html")
htmlwidgets::saveWidget(p, "my_plot.html")


# Load the required packages
library(plotly)

# Create a sequence of dates
dates <- seq(as.Date("2020/1/1"), as.Date("2023/1/1"), by = "month")

# Generate some random data for the plot
set.seed(123)  # for reproducibility
data <- rnorm(length(dates))

# Create a data frame
df <- data.frame(dates, data)

# Create a Plotly time series line plot
p <- plot_ly(df, x = ~dates, y = ~data, type = 'scatter', mode = 'lines')

# Save the plot to a standalone HTML file
htmlwidgets::saveWidget(p, "my_plot1.html")

#after saving, committing changes, pushing plots to github, put the "view raw" url from github here :https://raw.githack.com/
#Use this URL in production url .. put that URL into the site page

#ex for fluxtower1.md
#<iframe width="100%" height="600" frameborder="0" scrolling="no" 
#src="https://rawcdn.githack.com/kesondrakey/kesondrakey.github.io/aca4458d7a547f2aed9b3c90178f2cab30f4ae08/my_plot.html"></iframe>
  

