Bret Hart

Stat 159

Hw 3

https://creativecommons.org/licenses/by-nc/4.0/

Welcome to my homework 3 repository! I have in this repository reproduced and analyzed the multiple linear regression model, tables, statistics, and general statistical approach carried out in chapter 3.2 of **An Introduction to Statistical Learning**. This repository should allow you to carry out all of my steps through automation, beginning from automated download of the open-source data from **ISLR** which we used to carry out this procedure, and ending with the rendering of our final .Rmd report. All of these steps are laid out in macro format in the Makefile, found in this parent directory. You'll also find our GNU 2.0 open source license and our R session information so that you can see exactly what type of machine I carried this analysis out on.

In the code/ directory, you'll find the various functions, tests, and scripts which we created to be called externally from our .Rmd report file. We carried out unit tests using the testthat package in R to make sure our functions, which we used in our final analysis, were behaving as intended. These tests can be carried out by calling the test-that.R file in the code/ directory. 

In the data/ directory, we gather various intermediary data sets which we used to better understand our data. We also store various objects, such as regression objects or matrices which were calculated in our script files, so that we may call them later in other files without redoing these calculations. 

In the images/ directory, you'll find various exploratory models, which we used to first picture the data, simple regression plots of each of our predictors, and some final plots which can help us to visualize the true nature of our multiple regression model.

In the report/ directory, we find our .Rmd report, constructed out of these various pieces strewn across our directories, and the report.pdf and report.html which we rendered from this .Rmd report to better allow for viewing in different contexts.

I hope you can find everything you'd like - we included all of our data, scripts, and images, from every step of the way, so you can understand what steps we took to get where we ended!
