# establish communocation between to pods inside one Node:
- vim pod1.yaml
```

kind: Pod1
apiVersion: v1
metadata:
  name: testpod
spec:
  containers:
    - name: c01
      image: nginx
      ports: 
       - containerPort: 80
```
- kubectl apply -f <filename>

- kubectl get pods -o wide
  
# Pod2
- vim pod2.yaml
```

kind: Pod
apiVersion: v1
metadata:
  name: testpod2
spec:
  containers:
    - name: c02
      image: httpd
      ports: 
       - containerPort: 80
       
```
- curl <ip of pod1:80>

![image](https://github.com/user-attachments/assets/6e1e2b83-5388-474b-b8ee-981b4442beba)

![image](https://github.com/user-attachments/assets/ec6a8481-16cd-4366-a8ff-dbd479f9932a)

