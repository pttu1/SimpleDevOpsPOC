# Proof of Concept - DevOps

In this project, I am going to try to leverage some of the important tools in DevOps and ensure some of the best practices. 

**Problem:**<br />
We are being faced with the need to rework to fix bugs and errors in Agile SDLC.In many of this cases, deadlines may be fast approaching, bugs may defeinitely be piling up. 

Manual build process, which is usually handled by build and release team requires that the team are dependent on each other to progress, which in turn slow everyone down, including developers, testers, managers not getting quick feedback and ultimately unhappy customer. 

**Solution:**<br />
The solution to this problem is to build and test for every commit that's being made by this developers, and immediately notify them of every build status, whether or not they succeed. 

This enables them to fix code bugs instantly rather than waiting for the manual process. This also gives us room to do more testing quickly including Performance test, Load test, and other software test. 

**Benefits:**<br />
Agile.<br />
No Human intervention (Automated).<br />
Fault Isolation.<br />
Short Mean Time to Repair.<br /><br />
**Tools:** Git/GitHub, Terraform, Jenkins, Kubernetes, Helm, Docker, Maven, SonarQube, AWS(EC2, S3, VPC,) Slack,

**Flow of Execution:** <br />
Create Key-Pairs.<br />
Create Security Groups for Jenkins and SonarQube.<br />
Launch EC2 instances for Jenkins(install Docker on server), Kops, and for SonarQube.<br />
Install Plugins on Jenkins - Docker pipeline, pipeline utilitity steps.<br />
Create Kubernetes cluster (One master and two worker nodes). <br />
Create Repository for Helm. <br />
Write Jenkins pipeline code.<br />
Logging and Monitoring. <br />
Execute and troubleshoot.<br />
Summary
