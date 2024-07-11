
#  ${\color{brown} \textbf{Installation-Steps  \ (Amazon-Linux)}}$ 


````
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
````
````
docker --version
````

## ${\color{blue} \textbf{HTTPD Image From dockerhub}}$ 

````
docker pull httpd
docker images
docker run -itd --name httpd-server -p 81:80 httpd
docker ps 
````


## ${\color{orange} \textbf{NGINX Image From dockerhub}}$ 

````
docker pull nginx
````
````
docker images
````
````
docker run -itd --name nginx-server -p 82:80 nginx
````
````
docker ps 
````

## ${\color{mango} \textbf{TOMCAT Image From dockerhub}}$  

````
docker pull tomcat
````
````
docker images
````
````
docker run -itd --name tomcat-server -p 83:8080 tomcat
````
````
docker ps 
````
````
docker exec -it <container_id> /bin/bash
````
````
cd /webapps.dist
````
````
cp -r * /usr/local/tomcat/webapps/
````


## ${\color{green} \textbf{Build a image and run using "Dockerfile"}}$  

## ${\color{blue} \textbf{HTTPD}}$  
````
vim Dockerfile
````
````
  >> FROM httpd:latest
   <<
````
````
docker images
````
````
docker build -t httpd
````
````
docker run -itd --name httpd-server -p 81:80 httpd
````
````
docker ps 
````

## ${\color{voilet} \textbf{NGINX}}$ 

````
vim Dockerfile
````
````
  >> FROM ubuntu:20.04
  WORKDIR Guru
  RUN apt update -y && \
      apt install nginx -y

  COPY index.html /var/www/html/
  CMD ["nginx","-g","daemon off;"]  
  <<
````
````
echo "HELLO GURU" > index.html
````
````
docker build -t nginx .
````
````
docker run -itd --name nginx-server -p 81:80 nginx
````
````
docker ps 
````

## ${\color{green} \textbf{TOMCAT}}$ 
````
vim Dockerfile
````
````
  >> 
   FROM tomcat:latest
   LABEL maintainer="your-email@example.com"
   CMD ["catalina.sh", "run"]
  >>
````
````
docker images
````
````
docker run -itd --name tomcat-server -p 83:8080 tomcat
````
````
docker ps 
````
````
docker exec -it <container_id> /bin/bash
````
````
cd /webapps.dist
````
````
cp -r * /usr/local/tomcat/webapps/
````
## ${\color{orange} \textbf{TOMCAT With Extractration}}$
````
FROM ubuntu:20.04

USER root

RUN apt update -y

RUN apt install default-jdk -y

WORKDIR /opt/tomcat

ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.90/bin/apache-tomcat-9.0.90.tar.gz /opt/tomcat

RUN tar -xvzf apache-tomcat-9.0.90.tar.gz -C /opt/tomcat

ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/tomcat/apache-tomcat-9.0.90/webapps/

CMD ["apache-tomcat-9.0.90/bin/catalina.sh","run"]
````

#  ${\color{green} \textbf{Basic \ Docker \ Commands}}$ 

1. List Docker images:
````
   docker images
````
2. Pull Image From REgistry/DockerHub
````
docker pull <image_name>
````
3. Create Conatiner From Image
````
docker run -itd -p 80:80 <image_name>
````
4. List Running Conatainers
````
docker ps
````
5. List all stopped and Running Containers.
````
docker ps -a
````
6. Log In Into Conatainer
````
docker exec -it <container id> /bin/bash
````
7. Remove image
````
docker rmi <package_name>
````
8. Remove Container
````
docker rm <container_id>
````
9. Show the datail of Container
````
docker inspect <container_id>
````
10. Show logs of Container.
````
docker logs <container_id>
````
11. Stop Container
````
docker stop <container_id>
````
12. Start Container
````
docker start <container_id>
````
13. Stop all Running Containers
````
docker stop $(docker ps -qa)
````
14. Remove all running and stoppd containers
````
docker stop $(docker ps -a -q)
````
15. Remove all Stoppd containers
````
docker container prune
````
16. Build a image using Dockerfile
````
docker build -t <image_name>
````
17. Direct log in container working directory which we added in dockerfile.
````
docker run -it <image_name>
````
18. log in dockerhub in instance.
````
docker login
````
19. give tag to image for ppush on dockerhub
````
docker tag <image_name> guru6910/<image:tag>
````
20. push on dockerhub
````
docker push guru6910/<image:tag>
````
21. Remove all Images at once
````
docker rmi -f $(docker images)
````

## ${\color{blue} \textbf{Docker Network}}$
22. List of Network.
````
docker network ls
````
23. Create Network
````
docker network create <network_name>
````
NOTE : Default Network type is bridge.

24. give Network type to network.
````
docker network create --driver <network_type> <Network_name>
````
25. Create container with Network & give name to container.
````
docker run -itd --network <network_name> --name <container_name> <image>
````
26. Delete Network.
````
docker network rm <network_id>
````
