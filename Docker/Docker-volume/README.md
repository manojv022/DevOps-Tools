**What is Docker Volume:**

Volumes: Docker manages volumes kept in a section of the host filesystem (/var/lib/docker/volumes on Linux). This portion of the filesystem shouldn’t be altered by non-Docker processes. In Docker, volumes are the most effective way to store data. Using the docker volume create command, we may directly create a volume, or Docker can do it for us when it creates a container or service.

Docker volume is a way to manage the state of the containerized application which other docker containers can reuse they can be reusable with other containers. Data of the application will persist even if the container associated with that volume is stopped or even removed.

Docker volume will mainly used for applications that maintain stateful data share data between containers, or ensure data durability.


**Docker Volumes**

There are three main use cases for Docker Volumes as follows:

1. To keep data around when a container is removed

2. To share data between the host filesystem and the Docker container
3. To share data with other Docker containers
