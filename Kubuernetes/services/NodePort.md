# $${\color{blue}NodePort}$$

In Kubernetes, a **NodePort** is a type of Service that exposes an application running on a set of Pods to external traffic. Here’s an overview of how NodePort works and its use cases:

### How NodePort Works

1. **Service Type**: A NodePort is a specific type of Kubernetes Service. When you create a Service of type NodePort, Kubernetes allocates a port from a configured range (default is 30000-32767) on each Node in the cluster.

2. **Port Exposure**: The allocated NodePort on each Node redirects traffic to the corresponding Service, which in turn forwards it to the Pods.

3. **Accessibility**: This setup allows external traffic to access your application via the `<NodeIP>:<NodePort>` combination, where `NodeIP` is the IP address of any Node in the cluster, and `NodePort` is the port number assigned by Kubernetes.

### Example

Here’s an example of how to create a NodePort Service:

```yaml
apiVersion: v1
kind: Service
metadata:
  name: example-nodeport
spec:
  type: NodePort
  selector:
    app: my-app
  ports:
  - port: 80
    targetPort: 8080
    nodePort: 30007
```

- `type: NodePort` specifies that this is a NodePort Service.
- `port: 80` is the port on which the Service is exposed internally within the cluster.
- `targetPort: 8080` is the port on which the application is running within the Pods.
- `nodePort: 30007` is the external port on which the Service is accessible from outside the cluster.

### Use Cases

- **Development and Testing**: NodePort is useful for development and testing purposes where you need quick access to services running in a cluster without setting up a load balancer.
  
- **Small Deployments**: For small-scale deployments where high availability and load balancing are not critical, NodePort can be a simple solution.

### Limitations

- **Port Range**: The available range of ports (default 30000-32767) can limit the number of services you can expose using NodePort.
  
- **Security**: Since NodePort opens ports on every Node, it can expose your nodes to external traffic, which might not be desirable in a production environment.
  
- **Load Balancing**: NodePort does not provide load balancing across nodes by itself. You would typically need an external load balancer to distribute traffic evenly.

For production environments, it is generally recommended to use a LoadBalancer Service (if supported by your cloud provider) or to set up Ingress controllers for better traffic management and security.







--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
```
kind: Deployment
apiVersion: apps/v1
metadata:
   name: mydeployments
spec:
   replicas: 1
   selector:      # tells the controller which pods to watch/belong to
    matchLabels:
     name: deployment
   template:
     metadata:
       name: testpod1
       labels:
         name: deployment
     spec:
      containers:
        - name: c00
          image: httpd
          ports:
          - containerPort: 80

```
```
kind: Service                             # Defines to create Service type Object
apiVersion: v1
metadata:
  name: demoservice
spec:
  ports:
    - port: 80                               # Containers port exposed
      targetPort: 80                     # Pods port
  selector:
    name: deployment                    # Apply this service to any pods which has the specific label
  type: NodePort                       # Specifies the service type i.e  NodePort


```




![image](https://github.com/user-attachments/assets/6b66a724-dd5a-47a4-acda-f08fe9776522)


![image](https://github.com/user-attachments/assets/72c488c9-508e-49db-b808-881887a7d4a0)

