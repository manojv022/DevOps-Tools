# $${\color{blue} Docker🐳}$$
                                                                   
**What is Docker?**

Docker is an open-source containerization platform by which you can pack your application and all its dependencies into a standardized unit called a container. Containers are light in weight which makes them portable and they are isolated from the underlying infrastructure and from each other container. You can run the docker image as a docker container in any machine where docker is installed without depending on the operating system.

--------------------------------------------------------------------------------------

Docker is a set of Platforms as a service (PaaS) products that use Operating system-level virtualization to deliver software in packages called containers. Containers are isolated from one another and bundle their own software, libraries, and configuration files; they can communicate with each other through well-defined channels. All containers are run by a single operating system kernel and therefore use fewer resources than a virtual machine.




**What is a Dockerfile?**



The Dockerfile uses DSL (Domain Specific Language) and contains instructions for generating a Docker image. Dockerfile will define the processes to quickly produce an image. While creating your application, you should create a Dockerfile in order since the Docker daemon runs all of the instructions from top to bottom.

(The Docker daemon, often referred to simply as “Docker,” is a background service that manages Docker containers on a system.)

It is a text document that contains necessary commands which on execution help assemble a Docker Image.
Docker image is created using a Dockerfile.

![image](https://github.com/manojv022/DevOps-Tools/assets/167419795/1b18e8a8-d286-499d-b78b-7c9473bd0cd6)




**What is Docker Image?**



It is a file, comprised of multiple layers, used to execute code in a Docker container. They are a set of instructions used to create docker containers. Docker Image is an executable package of software that includes everything needed to run an application. This image informs how a container should instantiate, determining which software components will run and how. Docker Container is a virtual environment that bundles application code with all the dependencies required to run the application. The application runs quickly and reliably from one computing environment to another.

**What is Docker Container?**


Docker container is a runtime instance of an image. Allows developers to package applications with all parts needed such as libraries and other dependencies. Docker Containers are runtime instances of Docker images. Containers contain the whole kit required for an application, so the application can be run in an isolated way. For eg.- Suppose there is an image of Ubuntu OS with NGINX SERVER when this image is run with the docker run command, then a container will be created and NGINX SERVER will be running on Ubuntu OS.


![image](https://github.com/manojv022/DevOps-Tools/assets/167419795/89570f5c-0b92-4e06-8ec1-7d7df80326bb)







**Docker Architure**



Certainly! Docker operates on a **client-server architecture**. Here are the key components:

1. **Docker Daemon**: The Docker daemon manages services by communicating with other daemons. It handles Docker objects like images, containers, networks, and volumes through API requests¹³.

2. **Docker Client**: The client interacts with Docker. When you run Docker commands, the terminal sends instructions to the daemon. The client's main purpose is to pull images from the registry and run them on the Docker host¹.

3. **Docker Host**: Responsible for running multiple containers, the Docker host includes the daemon, images, containers, networks, and storage¹.

4. **Docker Registry**: All Docker images are stored here. The public registry (Docker Hub) is accessible to everyone, but you can also set up a private registry. Use `docker pull` to fetch images and `docker push` to upload them to your registry¹.

5. **Docker Images**: Images are read-only templates that contain instructions for creating containers. They enable collaboration between developers and are essential for sharing applications¹.

6. **Docker Containers**: Containers are created from images and represent running applications. You can start, stop, delete, or move containers using the Docker API or CLI¹.

7. **Docker Storage**: Containers have a writable layer, but for persistent data, you need a storage driver. Data volumes can be mounted directly into the container's filesystem¹.

Remember, Docker simplifies application deployment by packaging everything needed into containers, making it easier to manage and distribute software! 🐳🚀

Source: Conversation with Copilot, 3/7/2024
(1) Architecture of Docker - GeeksforGeeks. https://www.geeksforgeeks.org/architecture-of-docker/.
(2) Demystifying Docker Architecture: A Comprehensive Guide. https://www.redswitches.com/blog/docker-architecture-comprehensive-guide/.
(3) Docker overview | Docker Docs. https://docs.docker.com/guides/docker-overview/.
(4) Docker Architecture Overview - Structure & Components. https://spacelift.io/blog/docker-architecture
