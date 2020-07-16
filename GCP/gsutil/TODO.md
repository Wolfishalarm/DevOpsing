# Tasks

## Create a new Project for the version

## Copy Projects from previous version

## Copy resources from DEV to PROD
```console
 $ gsutil -m rsync -r gs://elliq-env-dev.appspot.com/resources/${RELEASE_DEV}/  gs://elliq-env-prod.appspot.com/resources/${RELEASE_PROD}/
```

## Make them Public
```console 
 $ gsutil -m acl -r ch -u AllUsers:R gs://elliq-env-dev.appspot.com/resources/${RELEASE_VERSION}/ 
```
