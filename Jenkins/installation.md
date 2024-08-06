**launch Ec2 Instance**

   - `ubuntu image`
   - `t2.medium`
   - `security group with 8080 port`
   - `30 GIB Volume`

- **Java install**
```

sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version

```
- **Jenkins Install on linux**
```
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

```
- `put <public Ip :8080>`
  
- `sudo cat <link>`
  
- `copy password and past login jenkins`

```
```
![image](https://github.com/user-attachments/assets/098cf8ca-ecc0-418a-80c0-5085412f0327)
![image](https://github.com/user-attachments/assets/dbbc7096-fb84-4f7e-930a-8a6014e5d4e9)
![image](https://github.com/user-attachments/assets/9851254d-0dde-430e-856e-8a1213948c5a)

![image](https://github.com/user-attachments/assets/5bd49dfc-dc4f-4726-a6a8-b9994d95cc0e)

