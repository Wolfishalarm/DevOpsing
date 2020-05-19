#!/usr/bin/env bash
# Use this script to create a firewall rule

# Take in all our functions for GCP
source lib/gcloud-library.sh

# firewall_rule: RULE_NAME DIRECTION PRIORITY NETWORK ACTION RULES

firewall_rule 'instance-ssh' 'INGRESS' '1000' 'testnet' 'ALLOW' 'TCP:22'
