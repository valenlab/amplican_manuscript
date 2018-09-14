#!/bin/bash
rm -rf ./hdr/simulation
mkdir ./hdr/simulation
mkdir ./hdr/simulation/crispresso
mkdir ./hdr/simulation/amplican_results
mkdir ./hdr/simulation/merged

rm ./hdr/simulation_commands.sh
rm ./hdr/crispresso_simulation_commands.sh
rm ./hdr/crispresso_pooled_commands.sh

R-3.5.0 < ./hdr/simulate_mutations.R --no-save
chmod 777 ./hdr/simulation_commands.sh
./hdr/simulation_commands.sh

chmod 777 ./hdr/crispresso_simulation_commands.sh
./hdr/crispresso_simulation_commands.sh

R-3.5.0 < ./hdr/crispresso_pooled_simulation_commands.R --no-save
chmod 777 ./hdr/crispresso_pooled_commands.sh
./hdr/crispresso_pooled_commands.sh

R-3.5.0 < ./hdr/run_amplican.R --no-save
R-3.5.0 < ./hdr/plot_hdr.R --no-save
