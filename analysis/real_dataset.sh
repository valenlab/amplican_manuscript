#!/bin/bash
# this is to be run on datasets downloaded from PRJNA245510 (BioProject, run 1 and run 5) and 
# E-MTAB-6310, E-MTAB-6355, E-MTAB-6356, E-MTAB-6357, E-MTAB-6358, (run 6-10).

#R-3.5.0 < ./real_dataset/preprocess_configs.R --no-save
#./real_dataset/split_fastq.sh ./real_dataset/amplican_config.csv /home/ai/Projects/data/amplican/Jamie/ /home/ai/Projects/amplican_manuscript/analysis/real_dataset/data/
#rm -rf ./real_dataset/data/crispresso
#rm -rf ./real_dataset/data/amplican_results
#rm -rf ./real_dataset/data/amplicondivider
#rm -rf ./real_dataset/data/merged

#mkdir ./real_dataset/data/crispresso
#mkdir ./real_dataset/data/amplican_results
#mkdir ./real_dataset/data/amplicondivider
#mkdir ./real_dataset/data/merged

#rm ./real_dataset/amplicondivider_simulation_commands.sh
#rm ./real_dataset/crispresso_simulation_commands.sh
#rm ./real_dataset/crispresso_pooled_commands.sh

# now before running the rest make sure you have prepared the data as in preprocess_configs.R
# paths there depend where you have put the data and to what folders

#R-3.5.0 < ./real_dataset/simulate_config_files.R --no-save

#./map_simulated.sh ./real_dataset/data/
#./map_merge_simulated.sh ./real_dataset/data

chmod 777 ./real_dataset/amplicondivider_simulation_commands.sh
./real_dataset/amplicondivider_simulation_commands.sh

chmod 777 ./real_dataset/crispresso_simulation_commands.sh
./real_dataset/crispresso_simulation_commands.sh

chmod 777 ./real_dataset/crispresso_pooled_commands.sh
./real_dataset/crispresso_pooled_commands.sh

R-3.5.0 < ./real_dataset/run_amplican.R --no-save
R-3.5.0 < ./real_dataset/plot_real_dataset.R --no-save
