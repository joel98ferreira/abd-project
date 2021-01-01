#!/bin/bash

######################################################
#                         FSYNC                      #
######################################################

~/scripts/autorun_optimizations.sh "#fsync =" "fsync = off" ~/results/settings/fsync fsync.dat

######################################################
#                  SYNCHRONOUS COMMIT                #
######################################################

~/scripts/autorun_optimizations.sh "#synchronous_commit =" "synchronous_commit = off" ~/results/settings/synchronous_commit synchronous_commit_off

~/scripts/autorun_optimizations.sh "#synchronous_commit =" "synchronous_commit = remote_write" ~/results/settings/synchronous_commit synchronous_commit_remote_write

~/scripts/autorun_optimizations.sh "#synchronous_commit =" "synchronous_commit = local" ~/results/settings/synchronous_commit synchronous_commit_local

~/scripts/autorun_optimizations.sh "#synchronous_commit =" "synchronous_commit = remote_apply" ~/results/settings/synchronous_commit synchronous_commit_remote_apply

######################################################
#                     WAL SYNC METHOD                #
######################################################

~/scripts/autorun_optimizations.sh "#wal_sync_method =" "wal_sync_method = fsync" ~/results/settings/wal_sync_method wal_sync_method_fsync

~/scripts/autorun_optimizations.sh "#wal_sync_method =" "wal_sync_method = open_datasync" ~/results/settings/wal_sync_method wal_sync_method_open_datasync

~/scripts/autorun_optimizations.sh "#wal_sync_method =" "wal_sync_method = open_sync" ~/results/settings/wal_sync_method wal_sync_method_open_sync

######################################################
#                    FULL PAGE WRITES                #
######################################################

~/scripts/autorun_optimizations.sh "#full_page_writes =" "full_page_writes = off" ~/results/settings/full_page_writes full_page_writes_off

######################################################
#                       WAL BUFFERS                  #
######################################################

~/scripts/autorun_optimizations.sh "#wal_buffers =" "wal_buffers = 2MB" ~/results/settings/wal_buffers wal_buffers_2MB

~/scripts/autorun_optimizations.sh "#wal_buffers =" "wal_buffers = 4MB" ~/results/settings/wal_buffers wal_buffers_4MB

~/scripts/autorun_optimizations.sh "#wal_buffers =" "wal_buffers = 8MB" ~/results/settings/wal_buffers wal_buffers_8MB

~/scripts/autorun_optimizations.sh "#wal_buffers =" "wal_buffers = 16MB" ~/results/settings/wal_buffers wal_buffers_16MB

~/scripts/autorun_optimizations.sh "#wal_buffers =" "wal_buffers = 32MB" ~/results/settings/wal_buffers wal_buffers_32MB

######################################################
#                       COMMIT DELAY                 #
######################################################

~/scripts/autorun_optimizations.sh "#commit_delay =" "commit_delay = 10" ~/results/settings/commit_delay commit_delay_10

~/scripts/autorun_optimizations.sh "#commit_delay =" "commit_delay = 200" ~/results/settings/commit_delay commit_delay_200

~/scripts/autorun_optimizations.sh "#commit_delay =" "commit_delay = 500" ~/results/settings/commit_delay commit_delay_500

~/scripts/autorun_optimizations.sh "#commit_delay =" "commit_delay = 1000" ~/results/settings/commit_delay commit_delay_1000

~/scripts/autorun_optimizations.sh "#commit_delay =" "commit_delay = 1500" ~/results/settings/commit_delay commit_delay_1500

######################################################
#                       COMMIT SIBLINGS              #
######################################################

~/scripts/autorun_optimizations.sh "#commit_siblings =" "commit_siblings = 2" ~/results/settings/commit_siblings commit_siblings_2

~/scripts/autorun_optimizations.sh "#commit_siblings =" "commit_siblings = 4" ~/results/settings/commit_siblings commit_siblings_4

~/scripts/autorun_optimizations.sh "#commit_siblings =" "commit_siblings = 8" ~/results/settings/commit_siblings commit_siblings_8

~/scripts/autorun_optimizations.sh "#commit_siblings =" "commit_siblings = 16" ~/results/settings/commit_siblings commit_siblings_16

