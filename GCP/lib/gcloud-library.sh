#!/usr/bin/bash

function create_vm_instance() {

  MACHINE_NAME=$1
  SUBNET_NAME=$2
  DISK_SIZE=$3

  echo "Starting VM: ${MACHINE_NAME} on subnet ${SUBNET_NAME} with a ${DISK_SIZE} root disk."

  gcloud beta compute instances create ${MACHINE_NAME} \
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
  fi
}

function create_network() {

	NETWORK_NAME=$1
	echo "Creating network named: ${NETWORK_NAME}"
	gcloud -q compute networks create ${NETWORK_NAME} 
}


function create_subnet() {
	SUBNET=$1
	NETWORK=$2
	RANGE=$3
	echo "Creating Subnet: ${SUBNET}, The network to which the subnetwork belongs is: ${NETWORK}" 
	echo "The IP space allocated to this subnetwork in CIDR format is: ${RANGE}"

	gcloud compute networks subnets create ${SUBNET} \
	--network=${NETWORK} \
	--range=${RANGE}
}

function delete_vm_instance() {
	INSTANCE=$1
	ZONE=$2
	echo "Deleting instance: ${INSTANCE}"
	gcloud --quiet compute instances delete ${INSTANCE} --zone ${ZONE}
}

function delete_subnet() {
	SUBNET_NAME=$1
	echo "Deleting Subnet: ${SUBNET_NAME}"
	gcloud --quiet compute networks subnets delete ${SUBNET_NAME}
}

function delete_network() {
	NETWORK=$1
	echo "Deleting Network: ${NETWORK}"
	gcloud --quiet compute networks delete ${NETWORK}
}

function firewall_rule() {
	RULE_NAME=$1
	DIRECTION=$2
	PRIORITY=$3
	NETWORK=$4
	ACTION=$5
	RULES=$6

	echo "Creating a Firewall rule named ${RULE_NAME}"
	echo "with diretion of ${DIRECTION}"
	echo "and Priority of ${PRIORITY}" 
	echo "On Network ${NETWORK}"
        echo "Action is ${ACTION} with rules of ${RULES}"
	
	gcloud compute firewall-rules create ${RULE_NAME} \
          --direction=${DIRECTION} \
          --priority=${PRIORITY} \
          --network=${NETWORK} \
          --action=${ACTION} \
          --rules=${RULES}

}

function delete_firewall_rule() {
	NAME=$1
	echo "Deleting Firewall rule ${NAME}"
	gcloud --quiet compute firewall-rules delete ${NAME}
}
