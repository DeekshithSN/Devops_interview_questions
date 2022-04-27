Unix & Shell 
---
1. Lets say you have a script that will take more than a day to execute, in this case how do you run that script. Also as user you might not able to keep machine in interactive mode for longer period.
3. is it possible to store a commands output, either success or failure to the same file?
4. what is debug mode in shell script?
5. set of commands executed at multiples places in shell script, want to standardize that is it possible something like to define function?
6. In shell script can we supply parameters to functions?
7. what is the use of shift command?
8. can we change the color of script output?

```
Black        0;30     Dark Gray     1;30
Red          0;31     Light Red     1;31
Green        0;32     Light Green   1;32
Brown/Orange 0;33     Yellow        1;33
Blue         0;34     Light Blue    1;34
Purple       0;35     Light Purple  1;35
Cyan         0;36     Light Cyan    1;36
Light Gray   0;37     White         1;37
```
tput command 
```
Num  Colour    #define         R G B

0    black     COLOR_BLACK     0,0,0
1    red       COLOR_RED       1,0,0
2    green     COLOR_GREEN     0,1,0
3    yellow    COLOR_YELLOW    1,1,0
4    blue      COLOR_BLUE      0,0,1
5    magenta   COLOR_MAGENTA   1,0,1
6    cyan      COLOR_CYAN      0,1,1
7    white     COLOR_WHITE     1,1,1
```

tput text mode commands 

```
tput bold    # Select bold mode
tput dim     # Select dim (half-bright) mode
tput smul    # Enable underline mode
tput rmul    # Disable underline mode
tput rev     # Turn on reverse video mode
tput smso    # Enter standout (bold) mode
tput rmso    # Exit standout mode
```

10. difference between break and exit 0 in shell script?
11. delete files which are older than 10 days?
12. delete empty files in a given directory?



Monitoring 
-----
13. what is the importance of monitoring?
14. difference between metrics monitoring and log monitoring, give example for both type of monitoring?
15. how do we configure endpoint in promethus to scrape the data?
16. what is the use of node exporter and alert manager in prometheus?
17. Can we monitor jenkins using prometheus? Also can we send mailer when jenkins is down?
18. what are metric types that prometheus can accept?

kubernetes
----
19. explain any 4 different types of pod statuses and also the reasons that why pod might go into that state?
20. what are operators and give one example where we can use operator?
21. what is the importance of kubeconfig file? Also lets say when you login to kuberenets by default it will pointed to default namespace, if i want list any objects which are other namespace need concate -n option for all the kubectl commands, is there a way we can set the namaspace to aviod -n option in all the commands?
22. given a object how do we find api version and kind with respect to cluster?
23. any work around to bring one pod out of rotation, when multiple replicas has been deployed?

Jenkins
----
24. list of best practices to follow while writing Jenkins pipeline?
25. Is it possible to run each stage on different agaent?
26. Is it possible to change success or error message that we see in console ouput ?
27. Have list of command that has to executed in certain directory in the code, is it possible to do the same?
28. Can we have versioning on Jenkins freestyle job? 

Ansible
---
29. Is it possible to set fact using ansible playbook?
30. can we concate line to exsisting file in remote server, example exporting env variable in bashrc? ( also imporatnt when the playbook runs again if the value exsists then you should not insert)
31. Difference between copy and template module?
32. In one of the template file need to use remote machine ip, how do we read the machine ip value? 

Devops General Interview Questions 
---
- Daily activites of devops engineer 
- challenges that you have faced while working devops 
- what are the envirnments which are there in the organization 
- How the deployents move from one env to other env
