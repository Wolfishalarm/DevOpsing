#!/usr/bin/env bash

function confirm_account() {
  GCP_ACCOUNT=$( gcloud config get-value account )
  GCP_PROJECT=$( gcloud config get-value project )

  echo "Working from GCP Project: ${GCP_ACCOUNT}"
  echo "Working from GCP Project: ${GCP_PROJECT}"

  # Confirm we have the right account
  read -p "Does this look ok? [yes/no]: " CONFIRM
  if [ $CONFIRM != 'yes' ]; then
    # Maybe make the change to the correct account here.
    echo "Ok, reset it and come back."
    exit
  fi

  echo "Great, moving on."
}

#confirm_account

rclone lsd calendar-1-16:
