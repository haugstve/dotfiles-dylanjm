#!/usr/bin/env Rscript

print("Reading in r_packages.txt!")
packages <- scan("~/dotfiles/R/r_packages.txt", what = "", sep = "\n")
install.packages(packages, repo = 'https://cloud.r-project.org/',dependencies=TRUE)
