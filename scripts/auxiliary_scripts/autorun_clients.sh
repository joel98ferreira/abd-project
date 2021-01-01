#!/bin/bash

# Connect to the remote server and execute the script to clean the DB
echo ">>>>>>>>>>>>> Going to clear the database on db server."
gcloud compute ssh --zone us-central1-a server-joel --command '~/scripts/dbservercleanpostgresdata.sh -a server-joel -n 10.128.0.0 -d'

# Wait 30 seconds
sleep 30s

# Execute the restore script
echo ">>>>>>>>>>>>> Restoring started."
~/scripts/restoredb.sh -s server-joel -w 80 -b tpcc80_joel.dump

# Run the transaction script
echo ">>>>>>>>>>>>> Run transactional script."
~/scripts/runclients.sh -w 80 -c $1

echo ">>>>>>>>>>>>> Changing file name."
mkdir -p $2
sudo mv ~/tpc-c-0.1-SNAPSHOT/TPCC*.dat $2/$3.dat