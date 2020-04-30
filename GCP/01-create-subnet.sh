#!/usr/bin/env bash
# Use this script to create a Subnet under your network in GCP

# Take in all our functions for GCP
source lib/gcloud-library.sh

# create_subnet SUBNET NETWORK RANGE
create_subnet 'eransub' 'mynet' '255.255.255.0/20'
