library(quantmod);  library(PerformanceAnalytics)
sym.vec <-c("^GSPC","AAPL")
getSymbols(sym.vec, from = "2015-03-01", to = "2018-03-01")
## three years, Yahoo Finance beta
GSPC <- GSPC[, "GSPC.Adjusted", drop=F]
AAPL <- AAPL[, "AAPL.Adjusted", drop=F]
GSPC_monthly <-to.monthly(GSPC)
AAPL_monthly <-to.monthly(AAPL)
GSPC_monthly_logret = CalculateReturns(GSPC_monthly,
                                       method="log")
AAPL_monthly_logret = CalculateReturns(AAPL_monthly,
                                       method="log")
y <-AAPL_monthly_logret$AAPL.Close[-1,]
x <-GSPC_monthly_logret$GSPC.Close[-1,]
y
x
