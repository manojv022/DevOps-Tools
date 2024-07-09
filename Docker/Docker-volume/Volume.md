#Notes:
**This command lists all volumes that exist on the Docker host.**
```
docker volume ls
```
**docker volume create
This command creates a new volume. You specify the name of the volume as an argument.**
```
docker volume create <my_volume>
```
**Docker Volume Inspect
This command provides detailed information about a specific volume, including its configuration and usage.**
```
docker volume inspect <my_volume>
```
**Docker Volume rm
This command removes one or more volumes. You specify the names of the volumes to remove as arguments.**
```
docker volume rm <my_volume>
```
**Docker Volume Prune
This command removes all unused volumes from the host.**
```
docker volume prune
```



**docker volume**
```
[ec2-user@ip-172-31-37-118 ~]$ docker volume create ebs-vol
[ec2-user@ip-172-31-37-118 ~]$ docker volume ls
[ec2-user@ip-172-31-37-118 ~]$ docker run -itd --name cont1  --mount source=ebs,target=/app ubuntu:latest
[ec2-user@ip-172-31-37-118 ~]$ docker run -itd --name cont2  --mount source=ebs,target=/app ubuntu:latest
[ec2-user@ip-172-31-37-118 ~]$ docker ps --filter volume=ebs-vol
[ec2-user@ip-172-31-37-118 ~]$ docker exec -it cont1 /bin/bash
[ec2-user@ip-172-31-37-118 ~]$ cd app
[ec2-user@ip-172-31-37-118 ~]$ touch demo.txt
[ec2-user@ip-172-31-37-118 ~]$ exit
#log in into another continer
[ec2-user@ip-172-31-37-118 ~]$ docker exec -it cont2 /bin/bash
[ec2-user@ip-172-31-37-118 ~]$ ls app
````
**attach local to file to container**
````
docker run -itd --name example1 -v ${PWD}/ec2:/var/demo ubuntu
````

