#!/usr/bin/env bash

function create_vm_instance() {

  MACHINE_NAME=$1
  SUBNET_NAME=$2
  DISK_SIZE=$3

  echo "Starting VM: ${MACHINE_NAME} on subnet ${SUBNET_NAME} with a ${DISK_SIZE} root disk."

  gcloud beta compute --project=rare-gist-275114 instances create ${MACHINE_NAME} \
  --zone=us-central1-a \
  --machine-type=n1-standard-1 \
  --subnet=${SUBNET_NAME} \
  --network-tier=PREMIUM \
  --maintenance-policy=MIGRATE \
  --service-account=427756866369-compute@developer.gserviceaccount.com \
  --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/trace.append \
  --image=debian-9-stretch-v20200420 \
  --image-project=debian-cloud \
  --boot-disk-size=${DISK_SIZE} \
  --boot-disk-type=pd-standard \
  --boot-disk-device-name=${MACHINE_NAME} 
  if [ "$?" != 0 ]; then 
    echo "Failed to create: ${MACHINE_NAME}"
    exit 1
  else
    echo "${MACHINE_NAME}: Created successfully."
    exit 0
  fi

}

function create_network() {

}

function create_subnet() {

}

function delete_vm_instance() {

}

function delete_subnet() {

}

function delete_network() {

}
