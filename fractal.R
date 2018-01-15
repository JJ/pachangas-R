library(RandomFields)
library(fractaldim)
# 1d time series
n <- 256
rf <- GaussRF(x = c(0,1, 1/n), model = "stable",
grid = TRUE, gridtriple = TRUE,
param = c(mean=0, variance=1, nugget=0, scale=1, kappa=1))
par(mfrow=c(4,2))
fd.estim.variogram (rf, nlags = 20, plot.loglog = TRUE)
fd.estim.variation (rf, nlags = 20, plot.loglog = TRUE)
