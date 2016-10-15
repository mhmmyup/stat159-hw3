advertising <- read.csv('data/Advertising.csv')
attach(advertising)

tv.summ <- summary(TV)
tv.var <- var(TV)
tv.mean <- mean(TV)
tv.med <- median(TV)
tv.range <- range(TV)
tv.iqr <- IQR(TV)

sales.summ <- summary(Sales)
sales.var <- var(Sales)
sales.mean <- mean(Sales)
sales.med <- median(Sales)
sales.range <- range(Sales)
sales.iqr <- IQR(Sales)

Radio.summ <- summary(Radio)
Radio.var <- var(Radio)
Radio.mean <- mean(Radio)
Radio.med <- median(Radio)
Radio.range <- range(Radio)
Radio.iqr <- IQR(Radio)

Newspaper.summ <- summary(Newspaper)
Newspaper.var <- var(Newspaper)
Newspaper.mean <- mean(Newspaper)
Newspaper.med <- median(Newspaper)
Newspaper.range <- range(Newspaper)
Newspaper.iqr <- IQR(Newspaper)

reg.df <- data.frame(TV, Radio, Newspaper, Sales)
cor.matrix <- round(cor(reg.df),4)
save(cor.matrix, file = "data/correlation-matrix.RData")


png('images/histogram-sales.png')
plot(hist(Sales))
dev.off()

png('images/histogram-tv.png')
plot(hist(TV))
dev.off()

png('images/histogram-radio.png')
plot(hist(Radio))
dev.off()

png('images/histogram-newspaper.png')
plot(hist(Newspaper))
dev.off()

png('images/scatterplot-matrix.png')
pairs(Sales ~ TV + Radio + Newspaper)
dev.off()



sink(file = "data/eda-output.txt", append = TRUE)

sprintf("Exploratory statistics for the Advertising Data Set")
cat("\n")
sprintf("TV statistics:")
sprintf("Mean: %.2f", tv.mean)
sprintf("Variance: %.2f", tv.var)
sprintf("Median: %.2f", tv.med)
sprintf('Range: Lower Bound %.2f, Upper Bound %.2f', tv.range[1], tv.range[2])
sprintf("Interquartile Range: %.2f", tv.iqr)
cat("\n")
sprintf("Radio statistics:")
sprintf("Mean: %.2f", Radio.mean)
sprintf("Variance: %.2f", Radio.var)
sprintf("Median: %.2f", Radio.med)
sprintf('Range: Lower Bound %.2f, Upper Bound %.2f', Radio.range[1], Radio.range[2])
sprintf("Interquartile Range: %.2f", Radio.iqr)
cat("\n")
sprintf("Newspaper statistics:")
sprintf("Mean: %.2f", Newspaper.mean)
sprintf("Variance: %.2f", Newspaper.var)
sprintf("Median: %.2f", Newspaper.med)
sprintf('Range: Lower Bound %.2f, Upper Bound %.2f', Newspaper.range[1], Newspaper.range[2])
sprintf("Interquartile Range: %.2f", Newspaper.iqr)
cat("\n")
sprintf("Sales statistics:")
sprintf("Mean: %.2f", sales.mean)
sprintf("Variance: %.2f", sales.var)
sprintf("Median: %.2f", sales.med)
sprintf('Range: Lower Bound %.2f, Upper Bound %.2f', sales.range[1], sales.range[2])
sprintf("Interquartile Range: %.2f", sales.iqr)
cat("\n")
sprintf("Correlation matrix of the four variables:")
cat("\n")
print(cor.matrix)

sink()

detach(advertising)


