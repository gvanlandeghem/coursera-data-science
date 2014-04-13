# obtainining information about available packages
a <- available.packages()
head(rownames(a), 3)

# shows contents of a
a

# install multiple packages
install.packages(c("slidify", "ggplot2"))

# install R packages from Bioconductor
source("http://bioconductor.org/biocLite.R")
biocLite()
biocLite(c("GenomicFeatures", "AnnotationDbi"))

install.packages("ggplot2")
# you need to load the package before use
library(ggplot2)
# after loading a package, functions exported by package will be attached to the top of the search() list
search()

install.packages("KernSmooth")
packageDescription("KernSmooth")
# copyright information is shown when loading a package
library("KernSmooth")


