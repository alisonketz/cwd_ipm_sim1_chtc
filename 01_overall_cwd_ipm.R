###
### Alison C. Ketz 05/31/2023
###
###

###########################################################
### Preliminaries
###########################################################

# rm(list = ls())

# setwd("~/Documents/ipm/cwd_ipm_sim1_chtc")

library(nimble)
library(dplyr)
library(coda)
library(splines)

#set seeds
# processnum <- 0
processnum <- as.numeric(commandArgs(TRUE))
seedy <- processnum + 1000
set.seed(seedy)

###########################################################
### Source summary function for posteriors
###########################################################

# source("support_functions.R")

###############################################################
# Load "Data" i.e. posterior summary stats from data model fit
###############################################################

source("02_load_all_data_to_run.R")

###############################################################
# Generate simulated data
###############################################################

# source("04_generate_data.R")
# source("04_generate_data_weighted_icap.R")
source("04_generate_data_noremove_icap.R")

###############################################################
# Partition simulated data into cases
###############################################################

source("05_data_cases.R")

###########################################################
### Setup consts etc for running the model
###########################################################

source("06_prelim_survival.R")

source("07_prelim_foi.R")

###########################################################
### Likelihoods
###########################################################

source("08_distributions.R")

###########################################################
### Functions for Efficient Calculations
###########################################################

source("09_calculations.R")

###########################################################
### Run model
###########################################################

source("10_modelcode.R")

###########################################################
### Run model
###########################################################

source("11_run_model.R")
# source("11_run_model_par.R")

###########################################################
### Post processing
###########################################################

source("12_post_process.R")
