# Proof of Concept - DevOps

In this project, I am going to try to leverage some of the important tools in DevOps and ensure some of the best practices. 

**Problem:**

We are being faced with the need to rework to fix bugs and errors in Agile SDLC.In many of this cases, deadlines may be fast approaching, bugs may defeinitely be piling up. 

Manual build process, which is usually handled by build and release team requires that the team are dependent on each other to progress, which in turn slow everyone down, including developers, testers, managers not getting quick feedback and ultimately unhappy customer. 

**Solution:**

The solution to this problem is to build and test for every commit that's being made by this developers, and immediately notify them of every build status, whether or not they succeed. 

This enables them to fix code bugs instantly rather than waiting for the manual process. This also gives us room to do more testing quickly including Performance test, Load test, and other software test. 

**Benefits:**

Agile
No Human intervention (Automated)
Fault Isolation
Short Mean Time to Repair

Tools: Git/GitHub, Terraform, Jenkins, Kubernetes, Docker, Maven, SonarQube, AWS(EC2, S3, VPC,) Slack,

**Flow of Execution:** 
Create Key-Pairs.
Create Security Groups for Jenkins and SonarQube.
Launch EC2 instances for Jenkins(install Docker on server), Kops, and for SonarQube.
Install Plugins on Jenkins - Docker pipeline, pipeline utilitity steps.
Create Kubernetes cluster (One master and two worker nodes)
Create Repository for Helm 
Write Jenkins pipeline code
Execute and troubleshoot
Summary
