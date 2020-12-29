#!/bin/bash

# ---------------------------------------------------
#                CREATE DATABASE SCRIPT
#                     ABD UMINHO
# ---------------------------------------------------

dbServerName=$1
nrWarehouses=$2

# Create a new database
createdb -h $dbServerName tpcc

# Load SQL scripts
cd ~/tpc-c-0.1-SNAPSHOT
psql -h $dbServerName tpcc < etc/sql/postgresql/createtable.sql
psql -h $dbServerName tpcc < etc/sql/postgresql/createindex.sql
for i in etc/sql/postgresql/*01; do psql -h $dbServerName tpcc < $i; done

# Define the number of warehouses
sed -i.bak "s/^tpcc.number.warehouses=.*/tpcc.number.warehouses=$nrWarehouses/g" etc/workload-config.properties

# Execute load script
sh ~/tpc-c-0.1-SNAPSHOT/load.sh

# Create extra tables
cd ~/extra
psql -h $1 tpcc < createExtraTables.sql