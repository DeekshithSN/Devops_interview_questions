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




