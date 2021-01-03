#!/bin/bash

dbServerName=$1
dbUser=$2
nrWarehouses=$3
backupFile=$4
nrClients=$5

######################################################
#                   ARCHIVE MODE                     #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_mode =" "archive_mode = off" archiving/archive_mode archive_mode_off

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_mode =" "archive_mode = on" archiving/archive_mode archive_mode_on

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_mode =" "archive_mode = always" archiving/archive_mode archive_mode_always

######################################################
#                    ARCHIVE COMMAND                 #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_command =" "archive_command = '%p'" archiving/archive_command archive_command_p

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_command =" "archive_command = '%f'" archiving/archive_command archive_command_f


######################################################
#                     ARCHIVE TIMEOUT                #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_timeout =" "archive_timeout = 10" archiving/archive_timeout archive_timeout_10

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_timeout =" "archive_timeout = 60" archiving/archive_timeout archive_timeout_60

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_timeout =" "archive_timeout = $nrClients" archiving/archive_timeout archive_timeout_$nrClients

~/scripts/auxiliary_scripts/autorun_optimizations.sh $dbServerName $dbUser $nrWarehouses $backupFile $nrClients "#archive_timeout =" "archive_timeout = 120" archiving/archive_timeout archive_timeout_120
