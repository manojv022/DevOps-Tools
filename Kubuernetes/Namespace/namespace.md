```
kubectl get ns
kubectl create namespace dev
kubectl get pods -n default
kubectl get pods --all-namespaces
kubectl config set-context --current --namespace=dev
kubectl config view --minify | grep namespace:


 kubectl config set-context $(kubectl config current-context) --namespace=dev
 kubectl config view | grep namespace:
````
#vi devns.yaml
```
apiVersion: v1
kind: Namespace
metadata:
   name: dev
   labels:
     name: dev

```
#vi pod.yaml
```


kind: Pod                              
apiVersion: v1                     
metadata:                           
  name: testpod                  
spec:                                    
  containers:                      
    - name: c00                     
      image: ubuntu              
      command: ["/bin/bash", "-c", "while true; do echo manoj; sleep 5 ; done"]
  restartPolicy: Never 
```

![image](https://github.com/user-attachments/assets/dc46ca07-63e9-4dfc-a694-5c43a56b8fd2)
