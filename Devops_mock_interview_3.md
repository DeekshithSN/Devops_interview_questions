- Mock interview video - https://youtu.be/IrIF9IjOwgs
- Mock interview Answers - 


GIT
---------------------------------------------------------------------------------------------------------------------------------
1. What is git-cherry-pick? why we use it?
2. Let’s say you’re working on new feature in some branch, now your manager says stop working on that and change few other things on old code. Here after changing the old code, I need to work on new code, so I need to place my new changes some place How would handle this scenario? 
3. What is a conflict in git?
4. command to list all branches in a repo?


Maven
--------------------------------------------------------------------------------------------------------------------------
5. .m2 is local repository for maven, now I don’t want to use .m2 folder as my local repository I want to use some other folder as my local, is it possible in maven? If yes, how would you do that?

```
mvn install -Dmaven.repo.local=/alternate/repo/location 
```
6. maven follows convention over configuration that means it assumes code should be there under src/main/java, test cases under src/tests and many more.Here my requirement is I don’t want to follow that conventions I need to use different folder structure is that possible in maven?
```
mvn help:effective-pom -Doutput=pom_eff.xml
```
7. What are dependency and plugin in maven? Give one example for each?
8. What are 3 build life cycles in maven?
9. In Which tag we will mention output artifact type( like jar, war or any other)?

Unix and Shell scripting 
---------------------------------------------------------------------------------------------------------------------
10. In a file I have ip addresses , I want list unique ip addresses with number of times its present in file?
```
grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" logfile | sort | uniq -c | sort -nr
```
11. What is exit status in UNIX?
12. Lets say I have shell script name magic.sh when I execute. It gives “This is from magic.sh”, so now if I change file name to magic-test.sh I should get “This is from magic-test.sh” basically as name of file chages my output should also change?
13. What is shebang ? Why it is used?


Jenkins 
--------------------------------------------------------------------------------------------------------
14. How to Downgrade plugins in Jenkins?
15. Have you worked on Jenkinsfile? Can we use different nodes for each stage?
16. Can you list few ways by which we can trigger our build in Jenkins? What is the difference between Build Periodically and Poll SCM? 

AWS
-------------------------------------------------------------------------------------------------------------
17. What are roles and policies in AWS IAM?
18. Lets say I have 50 users , for all 50 users I need to provide same privileges how do it? 
19. I want to give programmatic access means They can access AWS services via api’s  But should not be access AWS web console
20. As AMI is region specific I want create Machine with AMI which there in other Region is that possible?
21. Why we need security groups? By default what is outbound rules?
22. What is VPC? Give a brief about VPC?
23. Have you worked on Load balancers? If Yes, tell which load balancers you have used?
24. Lets say I have created auto scaling rule when ever Load goes more than 60% create a new instance Currently I have 3 machines, 1st machine load  is 62% , 2nd machine 30% and 3rd also 30%.  Now will auto scale rule creates new machine ?

Ansible
-----------------------------------------------------------------------------------------------------------------------
25. What is the best method to make your ansible YAML files reusable?
26. What is ansible vault and ansible tower?
27. Lets say I have playbook need to be run with Root user how would you do this?
28. Difference between copy and fetch module?

Docker
------------------------------------------------------------------------------------------------------------------------------
29. Lets say I have 1 GB file that has to be sent to docker daemon, as its 1GB it will take muchtime and network too. By which option while building dockerfile we can send the fileIn better manner?
30. What is the difference between ADD and COPY docker instructions in Dockerfile?
31. Command to remove to stopped and running Containers?
32. Inside the container I did many changes like  Creating, modifying and deleting file but I Wanted to check which files has been changed And what action has been taken what is the  Command we need to use ?


Kubernetes
--------------------------------------------------------------------------------------------------------------------------------------
33. List objects you know in kubernetes?Give a brief about each object?
34. Command to list pods and deployments

