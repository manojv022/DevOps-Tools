# container to container:
inside one pod->

```

kind: Pod
apiVersion: v1
metadata:
  name: testpod
spec:
  containers:
    - name: c00
      image: ubuntu
      command: ["/bin/bash", "-c", "while true; do echo Hello-manojv022; sleep 5 ; done"]
    - name: c01
      image: httpd
      ports:
       - containerPort: 80
```

 kubectl apply -f <filename>
 kubetl get pods
 kubectl exec testpod -it -c <cname> -- /bin/bash

# Download curl:

 apt-get update
apt-get install curl

# curl localhost:80

![WhatsApp Image 2024-07-27 at 23 42 23_d2ab5313](https://github.com/user-attachments/assets/a50963f1-b30f-467f-b1e1-057ed7160ae3)
