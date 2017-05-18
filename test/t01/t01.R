# Test log ml calculation
# Calculation in R under adaptive quadrature on unscaled posterior: -275.2962
require(mcmc3r) # my own MCMCTree tools package
rm(list=ls())

# Remember to set working directory appropriately
make.bfctlf(n=16)

lnLs <- scan("lnLs.txt")

bi <- BFbeta(16)

plot(bi$b, lnLs, pch=19, cex=.5)

glq(lnLs, bi) # [1] -275.2947 # very good!
