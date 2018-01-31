#!/bin/bash
rm -rf ./indel_size/simulation
mkdir ./indel_size/simulation
mkdir ./indel_size/simulation/crispresso
mkdir ./indel_size/simulation/amplicondivider
mkdir ./indel_size/simulation/amplican_results
mkdir ./indel_size/simulation/merged

rm ./indel_size/simulation_commands.sh
rm ./indel_size/amplicondivider_simulation_commands.sh
rm ./indel_size/crispresso_simulation_commands.sh
rm ./indel_size/crispresso_pooled_commands.sh

R < ./indel_size/simulate_mutations.R --no-save
chmod 777 ./indel_size/simulation_commands.sh
./indel_size/simulation_commands.sh

./map_simulated.sh ./indel_size/simulation
./map_merge_simulated.sh ./indel_size/simulation

chmod 777 ./indel_size/amplicondivider_simulation_commands.sh
./indel_size/amplicondivider_simulation_commands.sh

chmod 777 ./indel_size/crispresso_simulation_commands.sh
./indel_size/crispresso_simulation_commands.sh

R < ./indel_size/crispresso_pooled_simulation_commands.R --no-save
chmod 777 ./indel_size/crispresso_pooled_commands.sh
./indel_size/crispresso_pooled_commands.sh

R < ./indel_size/run_amplican.R --no-save
R < ./indel_size/plot_indel_size.R --no-save



