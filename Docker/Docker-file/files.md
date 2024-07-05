# dockerfile:

install docker 
```
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
```
make a dockerfile
```
vim Dockerfile
```
inside Dockerfile 
```
FROM ubuntu:20.04
WORKDIR DevOps-34
RUN apt update -y && \
    apt install nginx -y 
COPY index.html  /var/www/html/
EXPOSE 80 
CMD ["nginx" ,"-g", "daemon off;"]
```
save and exit 

make index.html file write code for webpage 

```
touch index.html
```
```
echo "hello world" > index.html
```
then run the following commands
```
docker bulid -t ubuntu:20.04
```
```
docker run -itd -p 80:80 nginx
```
