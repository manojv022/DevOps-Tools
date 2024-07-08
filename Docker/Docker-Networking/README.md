**Docker Networking**


Docker Networking allows you to create a Network of Docker Containers managed by a master node called the manager. Containers inside the Docker Network can talk to each other by sharing packets of information. In this article, we will discuss some basic commands that would help you get started with Docker Networking.

**Docker Networking**

A network is a group of two or more devices that can communicate with each other either physically or virtually. The Docker network is a virtual network created by Docker to enable communication between Docker containers. If two containers are running on the same host they can communicate with each other without the need for ports to be exposed to the host machine. You may use Docker to manage your Docker hosts in any platform manner, regardless of whether they run Windows, Linux, or a combination of the two.

**Docker Network Overview** 

 ![image](https://github.com/manojv022/DevOps-Tools/assets/167419795/bf998db3-89b6-4af2-99ef-8206a1f5d477)


**Network Drivers**

There are several default network drivers available in Docker and some can be installed with the help of plugins, Command to see the list of containers in Docker mentioned below.



**Types of Network Drivers**

1. **bridge:** If you build a container without specifying the kind of driver, the container will only be created in the bridge network, which is the default network. 
2. **host:** Containers will not have any IP address they will be directly created in the system network which will remove isolation between the docker host and containers. 
3. **none:** IP addresses won’t be assigned to containers. These containments are not accessible to us from the outside or from any other container.
4. **overlay:** overlay network will enable the connection between multiple Docker demons and make different Docker swarm services communicate with each other.
5. **ipvlan:** Users have complete control over both IPv4 and IPv6 addressing by using the IPvlan driver.
6. **macvlan:** macvlan driver makes it possible to assign MAC addresses to a container. 
