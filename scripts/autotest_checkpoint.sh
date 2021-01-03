#!/bin/bash

dbServerName=$1
dbUser=$2
nrWarehouses=$3
backupFile=$4
nrClients=$5

######################################################
#                  CHECKPOINT TIMEOUT                #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_timeout =" "checkpoint_timeout = 1min" checkpoint/checkpoint_timeout checkpoint_timeout_1min

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_timeout =" "checkpoint_timeout = 2min" checkpoint/checkpoint_timeout checkpoint_timeout_2min

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_timeout =" "checkpoint_timeout = 5min" checkpoint/checkpoint_timeout checkpoint_timeout_5min

######################################################
#                     MAX WAL SIZE                   #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 2GB" checkpoint/max_wal_size max_wal_size_2GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 3GB" checkpoint/max_wal_size max_wal_size_3GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 4GB" checkpoint/max_wal_size max_wal_size_4GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 5GB" checkpoint/max_wal_size max_wal_size_5GB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "max_wal_size =" "max_wal_size = 6GB" checkpoint/max_wal_size max_wal_size_6GB

######################################################
#                     MIN WAL SIZE                   #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "min_wal_size =" "min_wal_size = 80MB" checkpoint/min_wal_size min_wal_size_80MB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "min_wal_size =" "min_wal_size = 160MB" checkpoint/min_wal_size min_wal_size_160MB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "min_wal_size =" "min_wal_size = 320MB" checkpoint/min_wal_size min_wal_size_320MB

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "min_wal_size =" "min_wal_size = 640MB" checkpoint/min_wal_size min_wal_size_640MB

######################################################
#            CHECKPOINT COMPLETION TARGET            #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 0.0" checkpoint/checkpoint_completion_target checkpoint_completion_target_00

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 0.2" checkpoint/checkpoint_completion_target checkpoint_completion_target_02

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 0.5" checkpoint/checkpoint_completion_target checkpoint_completion_target_05

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 0.8" checkpoint/checkpoint_completion_target checkpoint_completion_target_08

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_completion_target =" "checkpoint_completion_target = 1.0" checkpoint/checkpoint_completion_target checkpoint_completion_target_10

######################################################
#                    CHECKPOINT WARNING              #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 0" checkpoint/checkpoint_warning checkpoint_warning_0

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 10s" checkpoint/checkpoint_warning checkpoint_warning_10

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 30s" checkpoint/checkpoint_warning checkpoint_warning_30s

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 60s" checkpoint/checkpoint_warning checkpoint_warning_60s

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#checkpoint_warning =" "checkpoint_warning = 120s" checkpoint/checkpoint_warning checkpoint_warning_120s
