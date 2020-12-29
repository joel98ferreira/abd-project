#!/bin/bash

# ---------------------------------------------------
#    GOOGLE CLOUD LOCAL DISKS CONFIGURATION SCRIPT
#                  ABD UMINHO
# ---------------------------------------------------

# Create the file system
sudo mkfs.ext4 -F /dev/nvme0n1

# Create the directory
sudo mkdir -p /mnt/disks/postgresql

# Mount the filesystem
sudo mount /dev/nvme0n1 /mnt/disks/postgresql

# Give permissions to the mounted directory
sudo chmod a+rwx /mnt/disks/postgresql

# Last configuration
echo UUID=`sudo blkid -s UUID -o value /dev/disk/by-id/google-local-ssd-0` /mnt/disks/postgresql ext4 discard,defaults,nofail 0 2 | sudo tee -a /etc/fstab
