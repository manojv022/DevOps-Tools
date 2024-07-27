**Use Servics types:**
establish communication between 2 different pods inside different Nodes with the help of virtual static ip

- cluster ip: 
- vim deployment.yaml

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

**commands:**
- kubectl apply -f <filename>
- kubectl get pods -o wide
- curl <ip : 80 >

  

**create service.yaml file**
- vim service.yaml
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
  type: ClusterIP                       # Specifies the service type i.e ClusterIP or NodePort

  
```
- kubectl get svc
- curl <ip : 80>

![image](https://github.com/user-attachments/assets/afe709a9-7741-4791-a4ba-9c89fc2020a6)

