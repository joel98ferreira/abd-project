#!/bin/bash

# Connect to the remote server and execute the script to clean the DB
echo ">>>>>>>>>>>>> Going to clear the database on db server."
gcloud compute ssh --zone us-central1-a $1 --command "~/scripts/dbservercleanpostgresdata.sh -a $1 -n 10.128.0.0 -d"

# Wait 30 seconds
sleep 30s

# Execute the restore script
echo ">>>>>>>>>>>>> Restoring started."
~/scripts/restoredb.sh -s $1 -w $2 -b $3

# Stop the postgresql server & execute the optimization
gcloud compute ssh --zone us-central1-a $1 --command '/usr/lib/postgresql/12/bin/pg_ctl stop -D /mnt/disks/postgresql/data'

# Edit the postgresql.conf with the optimization
gcloud compute ssh --zone us-central1-a $1 --command "sed -i.bak "s/^$5.*/$6/g" /mnt/disks/postgresql/data/postgresql.conf"

# Start the postgresql server
gcloud compute ssh --zone us-central1-a $1 --command '/usr/lib/postgresql/12/bin/postgres -D /mnt/disks/postgresql/data -k. </dev/null &>/dev/null &'

# Run the transaction script
echo ">>>>>>>>>>>>> Run transactional script."
~/scripts/runclients.sh -w $2 -c $4

# Create results directory and change file name
echo ">>>>>>>>>>>>> Changing file name."
mkdir -p $7 && cd $7
mv ~/tpc-c-0.1-SNAPSHOT/TPCC*.dat ./$8.dat