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
