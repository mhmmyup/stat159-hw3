.PHONY: data tests eda regression report clean all

all: eda regression report

data:
	curl http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv >> data/Advertising.csv

tests: code/test-that.R code/functions/regression-functions.R code/tests/test-regression.R
	Rscript code/test-that.R


eda: data/Advertising.csv
	Rscript code/scripts/eda-script.R

clean: data/eda-output.txt 
	rm -f data/eda-output.txt