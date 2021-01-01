#!/bin/bash

######################################################
#                  CHECKPOINT TIMEOUT                #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "#checkpoint_timeout =" "checkpoint_timeout = 1min" ~/results/settings/checkpoint_timeout checkpoint_timeout_1min

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "#checkpoint_timeout =" "checkpoint_timeout = 2min" ~/results/settings/checkpoint_timeout checkpoint_timeout_2min

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "#checkpoint_timeout =" "checkpoint_timeout = 5min" ~/results/settings/checkpoint_timeout checkpoint_timeout_5min

######################################################
#                     MAX WAL SIZE                   #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "max_wal_size =" "max_wal_size = 2GB" ~/results/settings/max_wal_size max_wal_size_2GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "max_wal_size =" "max_wal_size = 3GB" ~/results/settings/max_wal_size max_wal_size_3GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "max_wal_size =" "max_wal_size = 4GB" ~/results/settings/max_wal_size max_wal_size_4GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "max_wal_size =" "max_wal_size = 5GB" ~/results/settings/max_wal_size max_wal_size_5GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "max_wal_size =" "max_wal_size = 6GB" ~/results/settings/max_wal_size max_wal_size_6GB

######################################################
#                     MIN WAL SIZE                   #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "min_wal_size =" "min_wal_size = 80MB" ~/results/settings/min_wal_size min_wal_size_80MB

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "min_wal_size =" "min_wal_size = 160MB" ~/results/settings/min_wal_size min_wal_size_160MB

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "min_wal_size =" "min_wal_size = 320MB" ~/results/settings/min_wal_size min_wal_size_320MB

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "min_wal_size =" "min_wal_size = 640MB" ~/results/settings/min_wal_size min_wal_size_640MB

######################################################
#            CHECKPOINT COMPLETION TARGET            #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "#checkpoint_completion_target =" "checkpoint_completion_target = 0.0" ~/results/settings/checkpoint_completion_target checpoint_completion_target_00

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "#checkpoint_completion_target =" "checkpoint_completion_target = 0.2" ~/results/settings/checkpoint_completion_target checpoint_completion_target_02

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "#checkpoint_completion_target =" "checkpoint_completion_target = 0.5" ~/results/settings/checkpoint_completion_target checpoint_completion_target_05

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "#checkpoint_completion_target =" "checkpoint_completion_target = 0.8" ~/results/settings/checkpoint_completion_target checpoint_completion_target_08

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "#checkpoint_completion_target =" "checkpoint_completion_target = 1.0" ~/results/settings/checkpoint_completion_target checpoint_completion_target_10

######################################################
#                    CHECKPOINT WARNING              #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "checkpoint_warning =" "checkpoint_warning = 0" ~/results/settings/checkpoint_warning checkpoint_warning_0

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "checkpoint_warning =" "checkpoint_warning = 10s" ~/results/settings/checkpoint_warning checkpoint_warning_10

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "checkpoint_warning =" "checkpoint_warning = 30s" ~/results/settings/checkpoint_warning checkpoint_warning_30s

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "checkpoint_warning =" "checkpoint_warning = 60s" ~/results/settings/checkpoint_warning checkpoint_warning_60s

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-checkpoint Joel 80 dump.file 100 "checkpoint_warning =" "checkpoint_warning = 120s" ~/results/settings/checkpoint_warning checkpoint_warning_120s
