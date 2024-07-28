
```
apiVersion: v1
kind: Pod
metadata:
  name: myvolemptydir
spec:
  containers:
  - name: c1
    image: centos
    command: ["/bin/bash", "-c", "sleep 15000"]
    volumeMounts:                                    # Mount definition inside the container
      - name: xchange
        mountPath: "/tmp/xchange"          
  - name: c2
    image: centos
    command: ["/bin/bash", "-c", "sleep 10000"]
    volumeMounts:
      - name: xchange
        mountPath: "/tmp/data"
  volumes:                                                   
  - name: xchange
    emptyDir: {}
```

- kubectl apply -f <filename>
- kubectl get pods
- kubectl exec <filename> -c <containername> -it -- /bin/bash   -> go inside container
- cd /tmp
- cd xchange/
- vi abc.yaml
- exit container 1 and login in container 2 and there we can see container data



![image](https://github.com/user-attachments/assets/1c20a28d-2133-4f69-b226-3dd706a9e252)
