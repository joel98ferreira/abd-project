#!/bin/bash

# Connect to the remote server and execute the script to clean the DB
echo ">>>>>>>>>>>>> Going to clear the database on db server."
gcloud compute ssh --zone us-central1-a $1 --command "~/scripts/dbservercleanpostgresdata.sh -a $1 -n 10.128.0.0 -d"

# Wait 30 seconds
sleep 30s

# Execute the restore script
echo ">>>>>>>>>>>>> Restoring started."
~/scripts/restoredb.sh -s $1 -w $4 -b $4

# Run the transaction script
echo ">>>>>>>>>>>>> Run transactional script."
~/scripts/runclients.sh -s $1 -u $2 -w $4 -c $5

echo ">>>>>>>>>>>>> Changing file name."
mkdir -p $6 && cd $6
mv ~/tpc-c-0.1-SNAPSHOT/TPCC*.dat ./$7.dat