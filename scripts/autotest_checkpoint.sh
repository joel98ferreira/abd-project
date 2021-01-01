#!/bin/bash

dbServerName=$1
dbUser=$2
nrWarehouses=$3
backupFile=$4
nrClients=$5

######################################################
#                  CHECKPOINT TIMEOUT                #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_timeout =" "checkpoint_timeout = 1min" ~/results/checkpoint/checkpoint_timeout checkpoint_timeout_1min

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_timeout =" "checkpoint_timeout = 2min" ~/results/checkpoint/checkpoint_timeout checkpoint_timeout_2min

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_timeout =" "checkpoint_timeout = 5min" ~/results/checkpoint/checkpoint_timeout checkpoint_timeout_5min

######################################################
#                     MAX WAL SIZE                   #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 2GB" ~/results/checkpoint/max_wal_size max_wal_size_2GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 3GB" ~/results/checkpoint/max_wal_size max_wal_size_3GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 4GB" ~/results/checkpoint/max_wal_size max_wal_size_4GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 5GB" ~/results/checkpoint/max_wal_size max_wal_size_5GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 6GB" ~/results/checkpoint/max_wal_size max_wal_size_6GB

######################################################
#                     MIN WAL SIZE                   #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "min_wal_size =" "min_wal_size = 80MB" ~/results/checkpoint/min_wal_size min_wal_size_80MB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "min_wal_size =" "min_wal_size = 160MB" ~/results/checkpoint/min_wal_size min_wal_size_160MB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "min_wal_size =" "min_wal_size = 320MB" ~/results/checkpoint/min_wal_size min_wal_size_320MB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "min_wal_size =" "min_wal_size = 640MB" ~/results/checkpoint/min_wal_size min_wal_size_640MB

######################################################
#            CHECKPOINT COMPLETION TARGET            #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 0.0" ~/results/checkpoint/checkpoint_completion_target checpoint_completion_target_00

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 0.2" ~/results/checkpoint/checkpoint_completion_target checpoint_completion_target_02

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 0.5" ~/results/checkpoint/checkpoint_completion_target checpoint_completion_target_05

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 0.8" ~/results/checkpoint/checkpoint_completion_target checpoint_completion_target_08

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 1.0" ~/results/checkpoint/checkpoint_completion_target checpoint_completion_target_10

######################################################
#                    CHECKPOINT WARNING              #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 0" ~/results/checkpoint/checkpoint_warning checkpoint_warning_0

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 10s" ~/results/checkpoint/checkpoint_warning checkpoint_warning_10

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 30s" ~/results/checkpoint/checkpoint_warning checkpoint_warning_30s

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 60s" ~/results/checkpoint/checkpoint_warning checkpoint_warning_60s

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 120s" ~/results/checkpoint/checkpoint_warning checkpoint_warning_120s
