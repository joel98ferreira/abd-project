#!/bin/bash

dbServerName=$1
dbUser=$2
nrWarehouses=$3
backupFile=$4
nrClients=$5

######################################################
#                   ARCHIVE MODE                     #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_mode =" "archive_mode = off" ~/results/archiving/archive_mode archive_mode_off

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_mode =" "archive_mode = on" ~/results/archiving/archive_mode archive_mode_on

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_mode =" "archive_mode = always" ~/results/archiving/archive_mode archive_mode_always

######################################################
#                    ARCHIVE COMMAND                 #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_command =" "archive_command = '%p'" ~/results/archiving/archive_command archive_command_p

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_command =" "archive_command = '%f'" ~/results/archiving/archive_command archive_command_f


######################################################
#                     ARCHIVE TIMEOUT                #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_timeout =" "archive_timeout = 10" ~/results/archiving/archive_timeout archive_timeout_10

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_timeout =" "archive_timeout = 60" ~/results/archiving/archive_timeout archive_timeout_60

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_timeout =" "archive_timeout = $nrClients" ~/results/archiving/archive_timeout archive_timeout_$nrClients

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_timeout =" "archive_timeout = 120" ~/results/archiving/archive_timeout archive_timeout_120
