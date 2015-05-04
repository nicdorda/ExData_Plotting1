## Sample code for downloading archive packages from R
## Searched for code to get started with Sentiment Analysis using
##Twitter. The sentiment package was mentioned often but is no longer
## in the active R library. I found this code and sharing as example
## to download an archived R package

##URL for zipped package
url <- "http://cran.r-project.org/src/contrib/Archive/sentiment/sentiment_0.2.tar.gz"

##Zippped Package
pkgFile <- "sentiment_0.2.tar.gz"

##Download Command
download.file(url = url, destfile = pkgFile)

##Second package in this example
url2 <- "http://cran.r-project.org/src/contrib/Archive/Rstem/Rstem_0.4-1.tar.gz"
pkgFile2 <-"Rstem_0.4-1.tar.gz"
download.file(url = url2, destfile = pkgFile2)

##Got an error with one of the packages. Found out "tm" and
## "Rtem" was required for one of them. Dependent packages
## need to be installed first.
install.packages(c("tm","Rstem"))

## After dependent packages are installed, I intalled main package.
install.packages(pkgs=pkgFile, type="source", repos=NULL)