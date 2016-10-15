
#Takes an lm object, calcuates the residuals, squares them, then sums them all together. 
#Returns the RSS = Residual Sum Squares.
residual_sum_squares <- function(x){
  sum(x$residuals ^ 2)
}

#Takes an lm object, calculates the difference between the observed y values and their mean,
#squares them, then sums them all together. Returns the TSS = Total Sum Squares.
total_sum_squares <- function(x){
  sum( (x$model[[1]] - mean(x$model[[1]])) ^ 2 )
}

#Takes an lm object, then calculates and returns the R^2. The R^2 formula is: 1 - RSS/TSS.
r_squared <- function(x){
  1 - (residual_sum_squares(x)/total_sum_squares(x))
}

#Takes an lm object, then calculates and returns the F-Statistic. The F-Statistic formula is:
#The number of predictors = p. The number of observed values is n.
#( (TSS-RSS) / p ) / (RSS / n - p -1 ) 
f_statistic <- function(x){
  ( (total_sum_squares(x) - residual_sum_squares(x)) / (length(x$coefficients)-1) ) /
    (residual_sum_squares(x) / ( length(x$residuals) - (length(x$coefficients)-1) - 1) )
}

#Takes an lm object, then calculates and returns the Residual Standard Error.
#The RSE formula is: sqrt( (1/(n-p-1)) * RSS )
residual_std_error <- function(x){
  sqrt( (1 / ( length(x$residuals) - (length(x$coefficients)-1) - 1 )) * 
          residual_sum_squares(x) )
}

