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





**what is Docker** - By anup sir

Docker is a platform and set of tools designed to make it easier to create, deploy, and run applications using containers. Containers are lightweight, portable, and self-sufficient units that can encapsulate an application and its dependencies. Docker provides a standardized way to package, distribute, and manage these containers, making it simpler to develop, deploy, and scale applications across different environments.

**Key components of Docker include:**
**Docker Engine:** The core software responsible for building and running containers. It includes a daemon process, REST API, and a command-line interface (CLI) that allows users to interact with Docker.

**Docker Image:** A lightweight, standalone, and executable package that includes everything needed to run a piece of software, including the code, runtime, libraries, and system tools.

**Container:** An instance of a Docker image that runs in isolation on a host system. Containers share the host OS kernel but have their own file system, process space, and network interfaces.

**Dockerfile:** A text file that contains instructions for building a Docker image. It defines the base image, sets up the environment, and specifies how to install and configure software within the image.

**Docker Hub:** A cloud-based registry service provided by Docker, where users can find and share Docker images. It allows for easy distribution of pre-built images.

Docker simplifies the deployment process by eliminating the "it works on my machine" problem, as containers ensure consistency across development, testing, and production environments. It has gained widespread popularity in the software development and IT communities due to its flexibility, efficiency, and ease of use

**Why docker is used ?**
There are several reasons why Docker has gained popularity or Why docker is used:

-**Consistency:** Docker ensures that applications run consistently across different environments, such as development, testing, and production. This eliminates the "it works on my machine" problem and makes it easier to troubleshoot and debug issues.

**Portability:** Docker containers are self-contained units that can be easily moved between different hosts or cloud environments. This makes it easier to deploy applications across different infrastructures without worrying about compatibility issues.

**Scalability:** Docker allows you to scale applications horizontally by running multiple instances of a container across a cluster of machines. This makes it easier to handle increased traffic or workload by simply adding more containers.

**Efficiency:** Docker containers are lightweight and share the host system's operating system kernel. This means that containers have a minimal overhead compared to traditional virtual machines, resulting in better resource utilization and faster startup times.

**Isolation:** Docker provides a level of isolation between containers, ensuring that applications running in different containers do not interfere with each other. This enhances security and makes it easier to manage dependencies and versioning.

**How Does Docker Work?**
At the core of Docker is the Docker engine, which is responsible for building and running containers. The Docker engine uses a client-server architecture, where the Docker client communicates with the Docker daemon (server) to perform various operations.

Docker images serve as the building blocks for containers. An image is a read-only template that contains the application's code, runtime environment, system tools, and libraries. Images are created from a set of instructions called Dockerfiles, which define the steps to build the image.

Containers, on the other hand, are lightweight and portable instances of images. They can be started, stopped, and moved between different environments without any changes to the underlying application. Each container runs in isolation, with its own filesystem, network, and process space.

Docker packages, provisions and runs containers. Container technology is available through the operating system: A container packages the application service or function with all of the libraries, configuration files, dependencies and other necessary parts and parameters to operate. Each container shares the services of one underlying OS. Docker images contain all the dependencies needed to execute code inside a container, so containers that move between Docker environments with the same OS work with no changes.
