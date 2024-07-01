**Day:1**


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
**ping ansible IPs**
```
ansible all -m ping
```
**done**




