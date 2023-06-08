## Shell scripting 
1. **Use Indentation**
```
Indentation is an important part of making your code more readable and understandable. 
It can help you see the structure of your code at a glance and make it easier to follow.
```
2. **Use Meaningful Variable Names**
```
Using meaningful variable names can help make your code more readable and understandable.
It also makes it easier for others to maintain your code if they need to modify it in the future.
```
3. **Dont hard code the same values multiple times in the script, Instead use Variables to store the value and refer it where ever its required**
```
When creating shell scripts for automation, avoid hardcoding values such as IP addresses, file paths, or other system-specific details. 
Instead, use variables or configuration files to store and reference this information.
This will make the script more portable and easier to maintain in the future.
```
4. **Use Functions**
```
Functions are blocks of code that can be called multiple times from within a script. 
They help to keep the code organized and make it easier to maintain.
```
5. **Use Error Checking**
```
error checking is an important part of shell scripting, especially for DevOps automation. 
It helps you catch errors early on and prevent them from causing problems down the line.
```
6. **Dont have many prompts, Instead use parameters**
```
Users will be annoyed if you have too many prompts, instaed of that ask user to send it as parameters.
By using $1,$2,$3..$n you can easily access them in any part of the script
```
7. **Use $() instead of backticks, to evaluate command and store o/p in variable**
```
if you have backticks in the script, it will very hard to read.
$() increases the readability and has many other advantages too
```
----------------

## Docker 

1. **Understand Build context and dockerignore**
```
The “.” parameter in docker build instruction is the build context. 
So never run Dockerfile in a folder where so many files exists it will try to copy everything , Instead create empty folder to build or build Dockerfile where only required files exists  
Also, create a .dockerignore file to explicitly exclude files and directories.
```

2. **Rootless containers**
```
Never run ENTRYPOINT/CMD instructions with root user, by default it run's with root user.
However, it is a Dockerfile best practice to avoid doing that. 
There are very few use cases where the container needs to execute as root, so don’t forget to include the USER instruction to change the default effective UID to a non-root user.
```
3. **Multistage Dockerfiles**
```
In a multistage build, you create an intermediate container – or stage – with all the required tools to compile or produce your final artifacts (i.e., the final executable). 
Then, you copy only the resulting artifacts to the final image, without additional development dependencies, temporary build files, etc.

A well crafted multistage build includes only the minimal required binaries and dependencies in the final image, and not build tools or intermediate files. 
This images size drastically, reduces the attack surface & decreasing vulnerabilities.
```
4. **Use trusted base images**
```
Carefully choose the base for your images (the FROM instruction).

Building on top of untrusted or unmaintained images will inherit all of the problems and vulnerabilities from that image into your containers.
```
5. **Use smaller base images like alpine version, buster versions if possible**
```
By which we can create smaller images and small images are faster to pull over the network and faster to load into memory when starting containers or services.
```

## Kubernetes
1. **Use Namespaces**
```
Namespaces are very important in organizing your Kubernetes cluster and keeping it secured from other teams working on the same cluster.
If your Kubernetes cluster is large (hundreds of nodes) and multiple teams are working on it, you need to have separate namespaces for each team.
```
2. **Use Proper labels**
```
A Kubernetes cluster includes multiple elements like services, pods, containers, networks, etc.
Maintaining all of these resources and keeping track of how they interact with each other in a cluster is cumbersome. 
This is where labels come in. Kubernetes labels are key-value pairs that organize your cluster resources.
```
3. **Readiness and Liveness Probes**
```
Readiness and liveness probes are strongly recommended; it is almost always better to use them than to forego them. These probes are essentially health checks.

- Readiness probe
Ensures a given pod is up-and-running before allowing the load to get directed to that pod. 
If the pod is not ready, the requests are taken away from your service until the probe verifies the pod is up.

- Liveness probe
Verifies if the application is still running or not. 
This probe tries to ping the pod for a response from it and then check its health. 
If there is no response, then the application is not running on the pod. 
The liveness probe launches a new pod and starts the application on it if the check fails.
```
4. **Set Resource Requests & Limits**
```
Occasionally deploying an application to a production cluster can fail due limited resources available on that cluster. 
This is a common challenge when working with a Kubernetes cluster and it’s caused when resource requests and limits are not set.
Without resource requests and limits, pods in a cluster can start utilizing more resources than required. 
If the pod starts consuming more CPU or memory on the node, then the scheduler may not be able to place new pods, and even the node itself may crash.

Resource requests specify the minimum amount of resources a container can use
Resource limits specify the maximum amount of resources a container can use.
```

5. **Don’t Run as Root**
```
The UID (the Kubernetes systems-generated string that uniquely identifies objects) of the user running a container maps directly to the host. If the container runs as UID 0 (root), it will also appear as root on the node it’s running on.

Kubernetes has built-in protections to prevent escalation of privileges with this mechanism, However, there’s always a chance that security issues could allow for escalating privileges. Avoid the situation by not running run your containers as root. Instead, modify the Dockerfile for your built containers to create and use a user with a known UID.
```

## Jenkins 
1. **Cleaning up old Jenkins builds**
```
As a Jenkins administrator, removing old or unwanted builds keeps the Jenkins controller running efficiently. When you do not remove older builds, there are less resources for more current and relevant builds. This video reviews using the buildDiscarder directive in individual Pipeline jobs. The video also reviews the process to keep specific historical builds.
```
2. **Never hardcode secrets or credentials in pipeline**
```
if you hard code in pipeline as its CICD tool many people will have access to pipeline code or build logs, so there might be a chance to mis-usage of the secrets.
Use credntials by which you can secure secret values 
```
3. **Install only required plugins**
```
dont install plugins unnecessarily it might createissues  with the security, storage or restart of jenkins.    
```
4. **Executor count in node configuration**
```
Use as less executors as possible, if the value is high then node will used for executing multiple builds. Pipeline execution time will be increased because it should share resources.
If value is high sometimes nodes will become unresponsive.
```
5. **Use parallel execution of stages when stages are not dependent on each other** 
```
This makes pipeline to execute faster and nodes can serve other pipeline runs
```

## Ansible 

1.  **Use roles to keep playbooks well-organized**
```
Roles keep ansible playbook organized,easier maintanance & increases reusabilty. 
```

2. **make use ansible vault in case if you have any secrets**
```
The more you use Ansible, more tasks become automated. You will reach a point, that things such as SSL configuration, database passwords needs to be automated.  
This is where Ansible provides the vault module so you could safely save these data and automate it without any risks.
```

3. **Turn on Gather Facts only when required**
```
When a playbook is executed, Ansible starts collecting facts (data that is stored into variables) about the remote host prior execution. These details include variables from the remote host such as network configuration variables, hostnames so you could use it in your playbook.

This is a time-consuming process, in order to speed up the execution of the playbook we turn gathering facts off.
```


