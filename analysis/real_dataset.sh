#!/bin/bash
# this is PRJNA245510 BioProject, run 1

rm -rf ./real_dataset/data/crispresso
rm -rf ./real_dataset/data/amplican_results
rm -rf ./real_dataset/data/amplicondivider
rm -rf ./real_dataset/data/merged

mkdir ./real_dataset/data/crispresso
mkdir ./real_dataset/data/amplican_results
mkdir ./real_dataset/data/amplicondivider
mkdir ./real_dataset/data/merged

rm ./real_dataset/amplicondivider_simulation_commands.sh
rm ./real_dataset/crispresso_simulation_commands.sh
rm ./real_dataset/crispresso_pooled_commands.sh

R < ./real_dataset/simulate_config_files.R --no-save

./map_simulated.sh ./real_dataset/data
./map_merge_simulated.sh ./real_dataset/data

chmod 777 ./real_dataset/amplicondivider_simulation_commands.sh
./real_dataset/amplicondivider_simulation_commands.sh

chmod 777 ./real_dataset/crispresso_simulation_commands.sh
./real_dataset/crispresso_simulation_commands.sh

chmod 777 ./real_dataset/crispresso_pooled_commands.sh
./real_dataset/crispresso_pooled_commands.sh

R < ./real_dataset/run_amplican.R --no-save
R < ./real_dataset/plot_real_dataset.R --no-save
