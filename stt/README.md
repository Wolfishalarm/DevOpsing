# This project will deploy the STT client to a pod running in dev cluster to run tests.

### Target the correct GCP project
```console
  $ gcloud config set project elliq-env-dev
```

### List kubernetes clusters
```console
  $ gcloud container clusters list
```

### Target our cluster
```console
  $ gcloud container cluster get-credentials ir-dev-cluster --zone=us-central1-a
```

### Install kubectl
```console

  $ curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl"
  $ chmod +x ./kubectl
  $ sudo mv ./kubectl /usr/local/bin/kubectl
```

### Kubernetes Notes
```console
 - k8s is client/server
 - kubectl command line that we use to talk to the cluster API.
```

### Deploy test docker to k8s
```console
  $ kubectl run --generator=run-pod/v1 --image=jmcdice/cloud-shell:latest cloud-shell -- sleep infinity
```

### Get information on the pods running in our cluster
```console
  $ kubectl get pods
```

### Get information about our pod running in k8s
```console
  $ kubectl describe pod cloud-shell
```

### Connect to the cloud shell command line
```console
  $ kubectl exec --it cloud-shell -- bash
```

### List nodes in a cluster
```console

  $ kubect get nodes
gke-ir-dev-cluster-default-pool-5428bf08-73ej   Ready    <none>   29d   v1.15.11-gke.15
gke-ir-dev-cluster-default-pool-5428bf08-c9na   Ready    <none>   29d   v1.15.11-gke.15
gke-ir-dev-cluster-default-pool-5428bf08-ef49   Ready    <none>   29d   v1.15.11-gke.15
```
