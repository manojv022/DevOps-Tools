
### deployment1.yaml
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: app1
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app1
  template:
    metadata:
      labels:
        app: app1
    spec:
      containers:
        - name: app1-container
          image: nginx
          ports:
            - containerPort: 80
```
### service1.yaml
```yaml
apiVersion: v1
kind: Service
metadata:
  name: app1-service
spec:
  selector:
    app: app1
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
```
### deployment2.yaml
```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: app2
spec:
  replicas: 1
  selector:
    matchLabels:
      app: app2
  template:
    metadata:
      labels:
        app: app2
    spec:
      containers:
        - name: app2-container
          image: nginx
          ports:
            - containerPort: 80
```
### service2.yaml
```yaml
apiVersion: v1
kind: Service
metadata:
  name: app2-service
spec:
  selector:
    app: app2
  ports:
    - protocol: TCP
      port: 80
      targetPort: 80
  type: ClusterIP
```

### apply deployment and service files
````
kubectl apply -f deployment1.yaml
kubectl apply -f service1.yaml
kubectl apply -f deployment2.yaml
kubectl apply -f service2.yaml
````
### check deployment and service
````
kubectl get deployment
kubectl get svc
kubectl get pods
````
### Now lets access service 2 from pod 1

````
kubectl exec -it <pod1-name> -- /bin/sh
curl http://<service-2-ip-or-name>:80
````
