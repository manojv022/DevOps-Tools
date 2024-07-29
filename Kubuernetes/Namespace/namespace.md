```
kubectl get ns
kubectl create namespace dev
kubectl get pods -n default
kubectl get pods --all-namespaces
kubectl config set-context --current --namespace=dev
kubectl config view --minify | grep namespace:
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
![image](https://github.com/user-attachments/assets/dc46ca07-63e9-4dfc-a694-5c43a56b8fd2)
