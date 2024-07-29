```
apiVersion: v1
kind: Pod
metadata:
  name: myvolpod
spec:
  containers:
  - name: c1
    image: centos
    command: ["/bin/bash", "-c", "while true; do echo manoj; sleep 5 ; done"]
    volumeMounts:
      - name: testsecret
        mountPath: "/tmp/mysecrets"   # the secret files will be mounted as ReadOnly by default here
  volumes:
  - name: testsecret
    secret:
      secretName: mysecret
 
```



![image](https://github.com/user-attachments/assets/f9835666-936d-4aa0-bc85-d43003d293c8)


![image](https://github.com/user-attachments/assets/cb25dae8-91b0-4ba2-bc59-13efd8fc4530)
