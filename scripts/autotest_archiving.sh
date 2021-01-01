#!/bin/bash

######################################################
#                   ARCHIVE MODE                     #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-archiving Joel 80 dump.file 100 "#archive_mode =" "archive_mode = off" ~/results/settings/archive_mode archive_mode_off

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-archiving Joel 80 dump.file 100 "#archive_mode =" "archive_mode = on" ~/results/settings/archive_mode archive_mode_on.dat

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-archiving Joel 80 dump.file 100 "#archive_mode =" "archive_mode = always" ~/results/settings/archive_mode archive_mode_always

######################################################
#                    ARCHIVE COMMAND                 #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-archiving Joel 80 dump.file 100 "#archive_command =" "archive_command = '%p'" ~/results/settings/archive_command archive_command_p

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-archiving Joel 80 dump.file 100 "#archive_command =" "archive_command = '%f'" ~/results/settings/archive_command archive_command_f


######################################################
#                     ARCHIVE TIMEOUT                #
######################################################

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-archiving Joel 80 dump.file 100 "#archive_timeout =" "archive_timeout = 10" ~/results/settings/archive_timeout archive_timeout_10

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-archiving Joel 80 dump.file 100 "#archive_timeout =" "archive_timeout = 60" ~/results/settings/archive_timeout archive_timeout_60

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-archiving Joel 80 dump.file 100 "#archive_timeout =" "archive_timeout = 100" ~/results/settings/archive_timeout archive_timeout_100

~/scripts/auxiliary_scripts/autorun_optimizations.sh server-archiving Joel 80 dump.file 100 "#archive_timeout =" "archive_timeout = 120" ~/results/settings/archive_timeout archive_timeout_120