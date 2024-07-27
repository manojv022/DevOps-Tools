# $${\color{blue} \textbf{Ansible}}$$


**go on aws console and launch 3 ec2 instance 3 ... as we need , 1st ansible-master 2nd ,3rd ansible-nodes .......   all instance connect via SSH ( public ip and , ec2-user)**

**connect instance 1 and Install ansible**
```
sudo yum install ansible -y
```
**check Ansible version**
```
ansible --version
```
**Generate a SSH key**
```
ssh-keygen
```
**go in ansible file**
```
cd /etc/ansible/hosts
```
**in hosts do vim and put Nodes private IPs in hosts file**
```
vim hosts
```
**after create key pair , do cat Public key rsa and copy this ket (ctrl+shift+c) and connect both node instances and their do cd.ssh in .ssh we see authorized key so, do vim authorized key and copy public key past here save (wq!) and exit**
```
cd .ssh/
```
**show key**
```
ls -a

vim authorized key
```
**go to ansible-1 server and check the connection established or not using following command**
```
ansible all -m ping
```
**done**



** now we write a playbook in ansible ,create a file playbook.yaml in /etc/ansible and add our configuration code**
```
vim /etc/ansible/playbook.yaml
```
```
---
- name: update and install and httpd
  hosts: nodes
  become: true

  tasks:
   
  - name: Upgrade all packages
    yum:
     name: '*'
     state: latest
      
  - name: Install the latest version of Apache
    yum:
     name: httpd
     state: latest
      
  - name: Start Apache
    service:
     name:  httpd
     state: started
     enabled: true
       
  - name: Remove the Apache package
    yum:
      name: httpd
      state: absent


```
**Run the file command**
```
ansible-playbook <file name >
```

**apache tomcat script**
```
---
- name: first_playbook
  hosts: nodes
  remote_user: ec2-user
  become: true
  tasks : 
   
    - name: upgrade the packages
      yum:
        name: "*"
        state: latest
    
    - name: Install java 
      yum:
        name: java-11*
        state: present

    - name: Dowload tomcat file 
      get_url:
        url: https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz
        dest: /home/ec2-user/apache-tomcat-8.5.100.tar.gz
        mode: 744
  
    - name: Unzip tomcat file 
      unarchive:
        src: /home/ec2-user/apache-tomcat-8.5.100.tar.gz
        dest: /home/ec2-user/
        remote_src: yes
        mode: 744

    - name: Dowload Student.war file 
      get_url:
        url: https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war
        dest: /home/ec2-user/apache-tomcat-8.5.100/webapps/Student.war
    
    - name: Download SQL connector
      get_url:
       url: https://s3-us-west-2.amazonaws.com/studentapi-cit/mysql-connector.jar
       dest: /home/ec2-user/apache-tomcat-8.5.100/lib/mysql-connector-java-8.0.19

    - name: Start tomcat service
      shell:  bash /home/ec2-user/apache-tomcat-8.5.100/bin/catalina.sh start





