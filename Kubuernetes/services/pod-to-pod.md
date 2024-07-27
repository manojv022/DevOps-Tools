# establish communocation between to pods inside one Node:
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
# Pod2
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

![image](https://github.com/user-attachments/assets/6e1e2b83-5388-474b-b8ee-981b4442beba)

![image](https://github.com/user-attachments/assets/ec6a8481-16cd-4366-a8ff-dbd479f9932a)

