#!/bin/bash
rm -rf ./replicate_CrispRVariants/simulation
mkdir ./replicate_CrispRVariants/simulation
mkdir ./replicate_CrispRVariants/simulation/crispresso
mkdir ./replicate_CrispRVariants/simulation/amplicondivider
mkdir ./replicate_CrispRVariants/simulation/amplican_results
mkdir ./replicate_CrispRVariants/simulation/merged

rm ./replicate_CrispRVariants/simulation_commands.sh
rm ./replicate_CrispRVariants/amplicondivider_simulation_commands.sh
rm ./replicate_CrispRVariants/crispresso_simulation_commands.sh
rm ./replicate_CrispRVariants/crispresso_pooled_commands.sh

R-3.5.0 < ./replicate_CrispRVariants/simulate_mutations.R --no-save
chmod 777 ./replicate_CrispRVariants/simulation_commands.sh
./replicate_CrispRVariants/simulation_commands.sh

./map_simulated.sh ./replicate_CrispRVariants/simulation
./map_merge_simulated.sh ./replicate_CrispRVariants/simulation

chmod 777 ./replicate_CrispRVariants/amplicondivider_simulation_commands.sh
./replicate_CrispRVariants/amplicondivider_simulation_commands.sh

chmod 777 ./replicate_CrispRVariants/crispresso_simulation_commands.sh
./replicate_CrispRVariants/crispresso_simulation_commands.sh

R-3.5.0 < ./replicate_CrispRVariants/crispresso_pooled_simulation_commands.R --no-save
chmod 777 ./replicate_CrispRVariants/crispresso_pooled_commands.sh
./replicate_CrispRVariants/crispresso_pooled_commands.sh

R-3.5.0 < ./replicate_CrispRVariants/run_amplican.R --no-save
R-3.5.0 < ./replicate_CrispRVariants/plot_crisprvariant_synthetic.R --no-save
