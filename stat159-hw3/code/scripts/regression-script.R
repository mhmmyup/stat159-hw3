advertising <- read.csv('data/Advertising.csv')
attach(advertising)

adv.lm <- lm(Sales ~ TV + Radio + Newspaper)
adv.lm.summ <- summary(adv.lm)

save(adv.lm, adv.lm.summ, file = 'data/regression.RData')

png('images/scatterplot-tv-sales.png')
plot(TV, Sales)
title("TV as a sole linear predictor of Sales")
abline(lm(Sales ~ TV))
dev.off()

png('images/scatterplot-radio-sales.png')
plot(Radio, Sales)
title("Radio as a sole linear predictor of Sales")
abline(lm(Sales ~ Radio))
dev.off()

png('images/scatterplot-newspaper-sales.png')
plot(Newspaper, Sales)
title("Newspaper as a sole linear predictor of Sales")
abline(lm(Sales ~ Newspaper))
dev.off()

png('images/residual-plot.png')
plot(adv.lm, which = 1)
dev.off()

png('images/scale-location-plot.png')
plot(adv.lm, which = 3)
dev.off()

png('images/normal-qq-plot.png')
plot(adv.lm, which = 2)
dev.off()









