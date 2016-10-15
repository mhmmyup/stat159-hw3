.PHONY: data tests eda regression report clean all

all: eda regression report

eda-out = data/eda-output.txt
adv = data/Advertising.csv


#download advertising data from ISLR to local directory
data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> data/Advertising.csv

#test regression statistic functions using the testthat package in R
tests: code/test-that.R code/functions/regression-functions.R code/tests/test-regression.R
	Rscript code/test-that.R

#carry out exploratory data analysis of the 4 variables, create a correlation matrix.RData file 
#which can be called later, and make a few simple histograms to better visualize the data
eda: $(adv)
	Rscript code/scripts/eda-script.R

#carry out basic multiple least squares linear regression, saving the multiple regression objects
#to an RData file, and creating more advanced multiple regression plots
regression: code/scripts/regression-script.R data/Advertising.csv
	Rscript code/scripts/regression-script.R

report: report/report.Rmd
	Rscript -e "rmarkdown::render('report/report.Rmd','pdf_document')"

#clean various outputs which are messy and annoying
clean: $(eda-out) report/report.pdf
	rm -f $(eda-out) report/report.pdf