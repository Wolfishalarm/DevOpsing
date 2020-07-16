

k8s services running in GCP
 - client / server

cluster prod1
  - STT client (production verson) expose via LB (35.123.55.10)
    10.1.2.3 POD
  - STT server (production version) expose via LB (35.123.55.10)
    10.1.2.4 POD

  - QA STT client (not exposed)
    10.1.2.10 POD


# Manual
  - take the jar 
    -> build a docker
       -> deploy to k8s
          -> run tests
             -> publish results

# Create a pipeline for automated deploy.

