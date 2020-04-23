#!/usr/bin/env bash
# Use this script to start a compute instance in GCP

# Take in all our functions for GCP
source lib/gcloud-library.sh

# create_instance NAME SUBNET DISK_SIZE
create_vm_instance 'instance-3' 'default' '20GB'
