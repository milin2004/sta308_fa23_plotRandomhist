#* plotRandomHistogram.R
#* 
#* Author: Milin Rajan
#* 
#* 
#* Purpose: A function that will generate a random sample
#* of normal observations and plot a histogram of the data
#* 
#* 
#* Inputs:
#*    num_pts = number of observations to generate (random)
#*    mu = theoretical mean of the normal
#*    sigma = theoretical standard deviation of the normal
#*    seed = random number generation seed to ensure
#*           reproducibility
#* Outputs:
#*    A plot of the histogram is provided!
#*    A list with the following elements
#*      Random_values = a vector with the generated random values
#*      Mean_Random_values and SD_Random_values provide the
#*      corresponding mean and SD.
#* 
#* 
library(tidyverse)

plotRandomHistogram <- function(num_pts=30, mu=0, sigma=1,
                       seed = NULL, meanColor = "royalblue") {
  set.seed(seed)
  x <- rnorm(n=num_pts,  mean=mu, sd=sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v = mean(x), col = meanColor, lwd = 5)
  # The last line of code in the function is output from the function
  list(Random_values = x, 
       Mean_Random_values = mean_x, 
       SD_Random_values = sd(x))
}
plotRandomHistogram()
plotRandomHistogram(seed=1)
plotRandomHistogram(seed=1, num_pts = 1000000)












