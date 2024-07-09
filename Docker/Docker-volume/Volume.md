#Notes:


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

