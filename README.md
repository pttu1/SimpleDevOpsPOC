# Simple DevOps Proof of Concept

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
Short Mean Time To Repair

Tools: Git/GitHub, Jenkins, Git, Maven, SonarQube, AWS, EC2 Slack,

Flow of Execution: 
Create Key-Pairs
Create Security Groups for Jenkins and SonarQube.
