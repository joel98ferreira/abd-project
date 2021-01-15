#!/bin/bash

dbUser=$1
nrWarehouses=$2
backupFile=$3
nrClients=$4

######################################################
#                       ISOLATION                    #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-isolation-1 $dbUser $nrWarehouses $backupFile $nrClients "#default_transaction_isolation =" "default_transaction_isolation = 'serializable'" isolation isolation_serializable

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-isolation-2 $dbUser $nrWarehouses $backupFile $nrClients "#default_transaction_isolation =" "default_transaction_isolation = 'repeatable read'" isolation isolation_repeatable_read

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-isolation-3 $dbUser $nrWarehouses $backupFile $nrClients "#default_transaction_isolation =" "default_transaction_isolation = 'read uncommitted'" isolation isolation_read_uncommitted