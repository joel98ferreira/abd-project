#!/bin/bash

helpFunction(){
   echo ""
   echo "Usage: $0 -s dbServerName -w nrWarehouses"
   echo -e "\t-s Define the PostgreSQL DB Server Name"
   echo -e "\t-w Define the Number of Warehouses"
   exit 1 # Exit script after printing help
}

while getopts "s:w:" opt
do
   case "$opt" in
      w ) nrWarehouses="$OPTARG" ;;
      s ) dbServerName="$OPTARG" ;;
      ? ) helpFunction ;; # Print helpFunction in case parameter is non-existent
   esac
done

# Print helpFunction in case number of warehouses or db server name was not provided
if [ -z "$nrWarehouses" ] || [ -z "$dbServerName" ]
then
   echo "Some or all of the parameters are empty.";
   helpFunction
fi

# Begin script in case all parameters are correct

# Drop database
dropdb -h $dbServerName tpcc

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
./load.sh

# Create extra tables
cd ~/extra
psql -h $dbServerName tpcc < createExtraTables.sql