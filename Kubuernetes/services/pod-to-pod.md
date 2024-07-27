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
