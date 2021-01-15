#!/bin/bash

dbUser=$1
nrWarehouses=$2
backupFile=$3
nrClients=$4

######################################################
#                  SETTINGS COMBINATION              #
######################################################

# Run 1
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-1 $dbUser $nrWarehouses $backupFile $nrClients "settings_combination.conf" settings/combination settings_combination_1

# Run 2
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-2 $dbUser $nrWarehouses $backupFile $nrClients "settings_combination.conf" settings/combination settings_combination_2

# Run 3
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-3 $dbUser $nrWarehouses $backupFile $nrClients "settings_combination.conf" settings/combination settings_combination_3

######################################################
#                 CHECKPOINT COMBINATION             #
######################################################

# Run 1
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-4 $dbUser $nrWarehouses $backupFile $nrClients "checkpoints_combination.conf" checkpoint/combination checkpoint_combination_1

# Run 2
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-5 $dbUser $nrWarehouses $backupFile $nrClients "checkpoints_combination.conf" checkpoint/combination checkpoint_combination_2

# Run 3
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-6 $dbUser $nrWarehouses $backupFile $nrClients "checkpoints_combination.conf" checkpoint/combination checkpoint_combination_3

######################################################
#                    FINAL COMBINATION               #
######################################################

# Run 1
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-7 $dbUser $nrWarehouses $backupFile $nrClients "final_combination.conf" final/combination final_combination_2

# Run 2
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-8 $dbUser $nrWarehouses $backupFile $nrClients "final_combination.conf" final/combination final_combination_2

# Run 3
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-9 $dbUser $nrWarehouses $backupFile $nrClients "final_combination.conf" final/combination final_combination_3

######################################################
#          SETTINGS COMBINATION W/ ISOLATION         #
######################################################

# Run 1
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-10 $dbUser $nrWarehouses $backupFile $nrClients "settings_combination_isolation.conf" settings/combination settings_combination_isolation_1

# Run 2
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-11 $dbUser $nrWarehouses $backupFile $nrClients "settings_combination_isolation.conf" settings/combination settings_combination_isolation_2

# Run 3
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-12 $dbUser $nrWarehouses $backupFile $nrClients "settings_combination_isolation.conf" settings/combination settings_combination_isolation_3

######################################################
#         CHECKPOINT COMBINATION W/ ISOLATION        #
######################################################

# Run 1
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-13 $dbUser $nrWarehouses $backupFile $nrClients "checkpoints_combination_isolation.conf" checkpoint/combination checkpoint_combination_isolation_1

# Run 2
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-14 $dbUser $nrWarehouses $backupFile $nrClients "checkpoints_combination_isolation.conf" checkpoint/combination checkpoint_combination_isolation_2

# Run 3
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-15 $dbUser $nrWarehouses $backupFile $nrClients "checkpoints_combination_isolation.conf" checkpoint/combination checkpoint_combination_isolation_3

######################################################
#             FINAL COMBINATION W/ ISOLATION         #
######################################################

# Run 1
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-16 $dbUser $nrWarehouses $backupFile $nrClients "final_combination_isolation.conf" final/combination final_combination_isolation_1

# Run 2
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-17 $dbUser $nrWarehouses $backupFile $nrClients "final_combination_isolation.conf" final/combination final_combination_isolation_2

# Run 3
~/scripts/auxiliary_scripts/autorun_combinations.sh server-combinations-18 $dbUser $nrWarehouses $backupFile $nrClients "final_combination_isolation.conf" final/combination final_combination_isolation_3
