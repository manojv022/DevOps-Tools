
# $${\color{blue} ClusterIP}$$


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
  type: Cluste
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


In Kubernetes, a **ClusterIP** is the default type of Service that provides internal access to applications within a cluster. Here's an explanation of how it works and its common use cases:

### How ClusterIP Works

1. **Service Type**: When you create a Service without specifying a type, Kubernetes creates a ClusterIP Service by default. This Service assigns an internal IP address (ClusterIP) to the Service.

2. **Internal Communication**: The ClusterIP is only accessible within the cluster. It allows Pods within the cluster to communicate with each other using a stable IP address and DNS name.

3. **IP Assignment**: Kubernetes allocates a unique IP address from the cluster's internal IP range for the Service.

4. **Service Discovery**: Kubernetes automatically creates DNS entries for ClusterIP Services, making them discoverable by other Pods using the Service name.


### Use Cases

- **Microservices Communication**: ClusterIP Services are ideal for enabling communication between different microservices running within the same cluster.
- **Internal-Only Applications**: For applications that do not need external exposure and are meant to be accessed only within the cluster, ClusterIP is the preferred choice.
- **Service Discovery**: ClusterIP facilitates service discovery within the cluster, allowing Pods to communicate with Services using their DNS names.

### Limitations

- **No External Access**: ClusterIP Services are not accessible from outside the cluster. For external access, you would need to use NodePort, LoadBalancer, or Ingress.
- **Internal Use Only**: Since ClusterIP is designed for internal communication, it is not suitable for applications that need to be accessed by external clients.

### Summary

ClusterIP is a fundamental Service type in Kubernetes, providing internal connectivity and service discovery within the cluster. It is ideal for microservices architectures and internal applications, ensuring stable IP addresses and DNS names for seamless communication between Pods.



