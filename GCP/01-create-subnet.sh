#!/usr/bin/env bash
# Use this script to create a Subnet under your network in GCP

# Take in all our functions for GCP
source lib/gcloud-library.sh

# create_subnet SUBNET NETWORK RANGE
create_subnet 'testnet-subnet-01' 'testnet' '192.168.86.0/24'
create_subnet 'testnet-subnet-02' 'testnet' '10.20.0.0/24'

# 255.255.255.0 = SUBNET MASK (read about this)
# create_subnet 'eransub' 'mynet' '192.168.86.0/20'
# create_subnet 'eransub' 'mynet' '172.20.0.0/24'
# create_subnet 'eransub' 'mynet' '10.20.0.0/24'
# Read about private ip space (RFC1918)
