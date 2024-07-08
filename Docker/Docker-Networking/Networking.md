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
