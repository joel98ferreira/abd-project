#!/bin/bash

# Connect to the remote server and execute the script to clean the DB
echo ">>>>>>>>>>>>> Going to clear the database on db server."
gcloud compute ssh --zone us-central1-a $1 --command "~/scripts/dbservercleanpostgresdata.sh -a $1 -n 10.128.0.0 -d"

# Wait 30 seconds
sleep 30s

# Execute the restore script
echo ">>>>>>>>>>>>> Restoring started."
~/scripts/restoredb.sh -s $1 -w $3 -b $4

# Stop the postgresql server
gcloud compute ssh --zone us-central1-a $1 --command '/usr/lib/postgresql/12/bin/pg_ctl stop -D /mnt/disks/postgresql/data'

# Edit the postgresql.conf with the optimization
gcloud compute ssh --zone us-central1-a $1 --command "sed -i.bak 's/^$6.*/$7/g' /mnt/disks/postgresql/data/postgresql.conf"

# Save a log with the edited file
gcloud compute ssh --zone us-central1-a $1 --command "mkdir -p ~/logs && cp /mnt/disks/postgresql/data/postgresql.conf ~/logs/$9.conf"

# Start the postgresql server
gcloud compute ssh --zone us-central1-a $1 --command '/usr/lib/postgresql/12/bin/postgres -D /mnt/disks/postgresql/data -k. </dev/null &>/dev/null &'

# Run the transaction script
echo ">>>>>>>>>>>>> Run transactional script."
~/scripts/runclients.sh -s $1 -u $2 -w $3 -c $5

# Create dat results directory and change file name
echo ">>>>>>>>>>>>> Changing file name."
mkdir -p "~/dat_results/$8"
mv ~/tpc-c-0.1-SNAPSHOT/TPCC*.dat "~/dat_results/$8/$9.dat"

# Run script
echo ">>>>>>>>>>>>> Running showtpc.py"
mkdir -p "~/results/$8"
~/results/showtpc.py -bc "~/dat_results/$8/$9.dat" >> "~/results/$8/$9.txt"