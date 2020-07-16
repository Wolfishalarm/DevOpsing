
The Platform
 - CI/CD (manage users)
 - Platform Upgrades 
 - Backups
 - Additional Services

The Application




Jira -> DevOps
 Lia: Stories working on
 Eran: Stories working on

# Eran
Project Manager -> Meeting -> Release Management
  - Epics for Release Management  
    - Stories in the Backlog

- Platform/Infrastructure CI/CD (devops) SRE
    - Release Management (create release canidates) -> 
      - QA

3 Environments (one cluster per environment)
 - Prod 
     - This is production
 - Non-Prod/Staging/UAT (user acceptance testing) 
     - This is where application QA, feature testing, performance testing is done.
     - CI/CD monitors the repo/branch and does builds automatically, pushes to non-prod
     - Applicaiton CI/CD pipeline which detects git updates and does builds
 - Sandbox (only for devops people, testing changes to the platform) (all Eran/Lia)
     - Platform Engineering (devops engineers)
     - k8s upgrades are tested here
     - New platform deployment CI/CD pipelines are done here.

-------------------------

# Not Eran
- Application CI/CD (David/App teams)
  TDD (test driven development) Start by writing tests.
    checkout upcoming_release_branch -> feature_branch_name(*****)  (testing here)
      Pull Request Merged
      CI/CD sees the update to github and does a build 

Build Applicaiton CI/CD





Itai -> Story from the backlog -> feature(branch)

 git push
 - automatic build via CI/CD pipeline and push to staging env.
   - tests are execute against this feature
     - promoted from non-prod to prod (all via CI/CD)
  
