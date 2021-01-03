#!/bin/bash

dbServerName=$1
dbUser=$2
nrWarehouses=$3
backupFile=$4

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 10 clients "$nrWarehouses"warehouses_10clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 20 clients "$nrWarehouses"warehouses_20clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 30 clients "$nrWarehouses"warehouses_30clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 40 clients "$nrWarehouses"warehouses_40clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 50 clients "$nrWarehouses"warehouses_50clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 60 clients "$nrWarehouses"warehouses_60clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 70 clients "$nrWarehouses"warehouses_70clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 80 clients "$nrWarehouses"warehouses_80clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 90 clients "$nrWarehouses"warehouses_90clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 100 clients "$nrWarehouses"warehouses_100clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 110 clients "$nrWarehouses"warehouses_110clients

~/scripts/auxiliary_scripts/autorun_clients.sh $dbServerName $dbUser $nrWarehouses $backupFile 120 clients "$nrWarehouses"warehouses_120clients
