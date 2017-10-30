#!/bin/bash
# remove previous results if any
rm -rf ./real_offtargets/simulation_0.1
rm -rf ./real_offtargets/simulation_0.2
rm -rf ./real_offtargets/simulation_0.3

# make directories for new results
mkdir ./real_offtargets/simulation_0.1
mkdir ./real_offtargets/simulation_0.1/crispresso
mkdir ./real_offtargets/simulation_0.1/amplicondivider
mkdir ./real_offtargets/simulation_0.1/amplican_results
mkdir ./real_offtargets/simulation_0.1/merged

mkdir ./real_offtargets/simulation_0.2
mkdir ./real_offtargets/simulation_0.2/crispresso
mkdir ./real_offtargets/simulation_0.2/amplicondivider
mkdir ./real_offtargets/simulation_0.2/amplican_results
mkdir ./real_offtargets/simulation_0.2/merged

mkdir ./real_offtargets/simulation_0.3
mkdir ./real_offtargets/simulation_0.3/crispresso
mkdir ./real_offtargets/simulation_0.3/amplicondivider
mkdir ./real_offtargets/simulation_0.3/amplican_results
mkdir ./real_offtargets/simulation_0.3/merged

# remove previous simulated scripts
rm ./real_offtargets/simulation_0.1_commands.sh
rm ./real_offtargets/amplicondivider_simulation_0.1_commands.sh
rm ./real_offtargets/crispresso_simulation_0.1_commands.sh
rm ./real_offtargets/crispresso_pooled_simulation_0.1_commands.sh

rm ./real_offtargets/simulation_0.2_commands.sh
rm ./real_offtargets/amplicondivider_simulation_0.2_commands.sh
rm ./real_offtargets/crispresso_simulation_0.2_commands.sh
rm ./real_offtargets/crispresso_pooled_simulation_0.2_commands.sh

rm ./real_offtargets/simulation_0.3_commands.sh
rm ./real_offtargets/amplicondivider_simulation_0.3_commands.sh
rm ./real_offtargets/crispresso_simulation_0.3_commands.sh
rm ./real_offtargets/crispresso_pooled_simulation_0.3_commands.sh

# simulate scripts
R < ./real_offtargets/simulate_mutations.R --no-save
chmod 777 ./real_offtargets/simulation_0.1_commands.sh
chmod 777 ./real_offtargets/simulation_0.2_commands.sh
chmod 777 ./real_offtargets/simulation_0.3_commands.sh
./real_offtargets/simulation_0.1_commands.sh
./real_offtargets/simulation_0.2_commands.sh
./real_offtargets/simulation_0.3_commands.sh

./map_simulated.sh ./real_offtargets/simulation_0.1
./map_simulated.sh ./real_offtargets/simulation_0.2
./map_simulated.sh ./real_offtargets/simulation_0.3
./map_merge_simulated.sh ./real_offtargets/simulation_0.1
./map_merge_simulated.sh ./real_offtargets/simulation_0.2
./map_merge_simulated.sh ./real_offtargets/simulation_0.3

chmod 777 ./real_offtargets/amplicondivider_simulation_0.1_commands.sh
chmod 777 ./real_offtargets/amplicondivider_simulation_0.2_commands.sh
chmod 777 ./real_offtargets/amplicondivider_simulation_0.3_commands.sh
./real_offtargets/amplicondivider_simulation_0.1_commands.sh
./real_offtargets/amplicondivider_simulation_0.2_commands.sh
./real_offtargets/amplicondivider_simulation_0.3_commands.sh

chmod 777 ./real_offtargets/crispresso_simulation_0.1_commands.sh
chmod 777 ./real_offtargets/crispresso_simulation_0.2_commands.sh
chmod 777 ./real_offtargets/crispresso_simulation_0.3_commands.sh
./real_offtargets/crispresso_simulation_0.1_commands.sh
./real_offtargets/crispresso_simulation_0.2_commands.sh
./real_offtargets/crispresso_simulation_0.3_commands.sh

R < ./real_offtargets/crispresso_pooled_simulation_commands.R --no-save
chmod 777 ./real_offtargets/crispresso_pooled_simulation_0.1_commands.sh
chmod 777 ./real_offtargets/crispresso_pooled_simulation_0.2_commands.sh
chmod 777 ./real_offtargets/crispresso_pooled_simulation_0.3_commands.sh
./real_offtargets/crispresso_pooled_simulation_0.1_commands.sh
./real_offtargets/crispresso_pooled_simulation_0.2_commands.sh
./real_offtargets/crispresso_pooled_simulation_0.3_commands.sh

R < ./real_offtargets/run_amplican.R --no-save
R < ./real_offtargets/plot_real_offtargets.R --no-save
