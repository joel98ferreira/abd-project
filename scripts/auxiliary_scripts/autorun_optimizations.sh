#!/bin/bash

# Connect to the remote server and execute the script to clean the DB
echo ">>>>>>>>>>>>> Going to clear the database on db server."
gcloud compute ssh --zone us-central1-a server-joel --command '~/scripts/dbservercleanpostgresdata.sh -a server-joel -n 10.128.0.0 -d'

# Wait 30 seconds
sleep 30s

# Execute the restore script
echo ">>>>>>>>>>>>> Restoring started."
~/scripts/restoredb.sh -s server-joel -w 80 -b tpcc80_joel.dump

# Stop the postgresql server & execute the optimization
gcloud compute ssh --zone us-central1-a server-joel --command '/usr/lib/postgresql/12/bin/pg_ctl stop -D /mnt/disks/postgresql/data'

# Edit the postgresql.conf with the optimization
gcloud compute ssh --zone us-central1-a server-joel --command "sed -i.bak "s/^$1.*/$2/g" /mnt/disks/postgresql/data/postgresql.conf"

# Start the postgresql server
gcloud compute ssh --zone us-central1-a server-joel --command '/usr/lib/postgresql/12/bin/postgres -D /mnt/disks/postgresql/data -k. </dev/null &>/dev/null &'

# Run the transaction script
echo ">>>>>>>>>>>>> Run transactional script."
~/scripts/runclients.sh -w 80 -c $1

echo ">>>>>>>>>>>>> Changing file name."
sudo mv ~/tpc-c-0.1-SNAPSHOT/TPCC*.dat ~/results/$2.dat