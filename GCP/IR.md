# IR

# Notes
 - Account:
 - Project:
 

# Commands

## Display the Credentialed accounts authenticated in GCP. Only currently available accounts
```console
  $ gcloud auth list
```

## Login to a difference Credentialed account
```console
  $ gcloud auth login <email@address.com>
```

## Set the active account
```console
  $ gcloud config set account <email@address.com
```

## List the properties in the active configuration
```console
  $ gcloud config list
```

## List Projects running on my current account
```console
  $ gcloud projects list
```

## Change Project
```console
  $ gcloud config set project <PROJECT_ID>
```
