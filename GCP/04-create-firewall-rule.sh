#!/usr/bin/env bash
# Create a firewall rule

gcloud compute firewall-rules create instance-ssh \
        --direction=INGRESS \
        --priority=1000 \
        --network=testnet \
        --action=ALLOW \
        --rules=tcp:22 

