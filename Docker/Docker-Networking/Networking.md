**We can see all of the networks that are available on the current host by using**
```
docker network ls
```
**With the help of the “Create” command, we can create our own docker network and can deploy our containers in it.**
```
sudo docker network create --driver <driver-name> <bridge-name>
```
**Using the “Connect” command, you can connect a running Docker Container to an existing Network.**
```
sudo docker network connect <network-name> <container-name or id>
```
**Using the Network Inspect command, you can find out the details of a Docker Network.**
```
sudo docker network inspect <network-name>
```
**You can remove a Docker Network using the rm command.**
```
sudo docker network rm <network-name>
```
**To remove all the unused Docker Networks, you can use the prune command.**
```
sudo docker network prune
```

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
##Notes:

docker run <image name>  - your container will be created

docker run -d <image name> - runs your image in detached mode

docker ps    -- running container

docker ps -a -- all containers (exited running)

docker ps -q -- all the container ids (running)

docker ps -qa -- all containers ids (exer run --name anup ited running)

docker run -d name containernam imagename  - gives auth name to your container (while cont is running)

docker rename  (cont id 809)  (newname of cont b24) - to rename exiting cont

docker start <container id> - to start the container

docker stop <container id> - to stop the container

docker rm <container id> - to remove container

docker exec -it <container id> bash - can enter into existing container or run any command in it.

docker exec <container id> command - without goin inside container you can execute command inside it

docker run  -it <image name> command(bash or sh) - can enter inside container or can execute any command into cont

docker run  <image name> <command> - can execute command in running container

docker stats container_id - will give you container stats

docker inspect container_id

**port mapping**

1. docker run -p -d 80:80 nginx --- will port map with container's port with hosts port

2. docker run  -d -P nginx -- will give map with container's port with hosts random port

docker cp source destination - copies file from source to destination

docker cp source file container_id:/usr/local/nginx/html/index.html

/usr/local/apache2/htdocs/html/index.html

docker rm -f `docker ps -qa` - will remove all container at once

docker rmi -rf `docker ps -qa` - will remove all images

docker logs containerid - logs of container

docker stats containerid - docker conatainer stats

docker top containerid  - docker container id top process viewer

docker rmi -f $(docker images -q) - will delete all images at once

docker rm -f $(docker ps -a -q)  - will delete all container at once

docker run  = pull  + create + save

-------------------------------------------------------------------------------------------------------------------------------------------------


**Docker Network**

**DOCKER network drivers or docker network types**

**bridge** - to connect two different networks , create bridge between two diff networks.
(eg communication between host and docker container is possible because of bridge)

**overlay** - to communicate two containers that are present in two seprate networks(hosts) using
docker swarm.

**none** -  doesnt have any ip attached to it to keep your container completely isolated and 
ensure this container is kept as a backup container.

**host** -  the container will get host ip that is localhost ip.

**macvlan** - to give physical identity , to make appear as physical ,allocating physical
address to container

**IPvlan** - we use this network to provide ipv4 and ipv6 addresss of our choice or
assign customize ip to container,i.e take control over ipv4 or ipv6 assigning.

------------------------------------------------------------------------------------------------------------------------------------------------
**Dockernetwork commands**

docker network create --subnet "192.168.0.0/16" --driver bridge newnetwork 

docker network ls 

docker run -d -P --network newnetwork nginx

docker run -d -p --network host httpd

docker run -d -p --network <network_driver_type> image name

-------------------------------------------------------------------------------------------------------------------------------------------------
**Docker Volume**

docker volume ls

docker volume create newvol1

docker run -d -p -v newvol1:/usr/local/apache2/htdocs/  httpd

docker run -d -p -v newvol1:/usr/share/nginx/html/  nginx

root dir location - /var/lib/docker/volumes

mkdir /mnt/voldir

docker -d -p -v /mnt/voldir:/usr/local/tomcat/ tomcat

----------------------------------------------------------------------------------------------------------------------------------------------------
**Docker Compose**

basic command to run docker Compose

A compose file will ensure that you dont need to run commands and its configurations

over and over you just need to have a config file and using that file you will keep on building
you containers.

docker compose up .   - where your compose file is present

docker compose down . 

docker compose prune  


-------------------------------------------------------------------------------------------------------------------------------------------------------
**Docker registory**


docker login

docker tag imagename dockerhubusername/repositoryname:tag   #image name and repo name should be same

docker run username/nameofrepo:tag

docker image push anupdudhe/dockercomposenginx-frontendnginxfirst:latest
