
#file
```
 apiVersion: v1
kind: Pod
metadata:
  name: myvolconfig
spec:
  containers:
  - name: c1
    image: centos
    command: ["/bin/bash", "-c", "while true; do echo manoj; sleep 5 ; done"]
    volumeMounts:
      - name: testconfigmap
        mountPath: "/tmp/config"   # the config files will be mounted as ReadOnly by default here
  volumes:
  - name: testconfigmap
    configMap:
       name: mymap   # this should match the config map name created in the first step
       items:
       - key: sample.conf
         path: sample.conf
```

create a file : vi sample.conf

#command: kubectl create configmap mymap --from-file=<filename>

        kubectl describe configmap <congig name>
        
        kubectl get configmap
        
        kubectl apply -f deployconfigmap.yaml

       chmod 644 deployconfigmap.yml




     


#environment variables:

```
```
apiVersion: v1
kind: Pod
metadata:
  name: myenvconfig
spec:
  containers:
  - name: c1
    image: centos
    command: ["/bin/bash", "-c", "while true; do echo manoj; sleep 5 ; done"]
    env:
    - name: MYENV         # env name in which value of the key is stored
      valueFrom:
        configMapKeyRef:
          name: mymap      # name of the config created
          key: sample.conf  



        ![image](https://github.com/user-attachments/assets/9c87c1c3-8db8-4804-a0f6-4fed0a1c95b1)




      ![image](https://github.com/user-attachments/assets/28f28e89-5e99-4e93-b20d-6ef350f5bdb8)