#!/bin/bash
# remove previous results if any
rm -rf ./precision/simulated
rm ./precision/art_commands.sh

# make directories for new results
mkdir ./precision/simulated
rm -rf ./precision/results_0/*
rm -rf ./precision/results_0.01/*
rm -rf ./precision/results_0.001/*

# simulate scripts
R-3.5.0 < ./precision/simulate_mutations.R --no-save
chmod 777 ./precision/art_commands.sh
./precision/art_commands.sh
rm ./precision/simulated/*.fa

ulimit -s unlimited
R-3.5.0 < ./precision/run_amplican.R --no-save
R-3.5.0 < ./precision/plot_precision.R --no-save
