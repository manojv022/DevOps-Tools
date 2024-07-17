
**Deployment**



- Create deployment 
````
kubectl apply -f deployment.yaml
````

- Check deploymeent
````
kubectl get deployment
````
- Detailed info of deployment
  
````
kubectl get deployment <deployment-name>  -o wide
````

````
kubectl describe deployment <deployment name>
````
- Update image inside Deployment and also record command to identify revision
````
kubectl set image deployment/demo-deploy nginx=nginx:1.21.1  --record=true
````

- Check deployment history
````
kubectl rollout history deployment demo-deploy
````

- Verfiy the Changes
````
kubectl get deployment demo-deploy -o wide
````
- Scale Existing Deployment
````
kubectl scale deployment demo-deploy --replicas=7
````
- Rollback to Specific version
````
kubectl rollout undo deployment demo-deploy --to-revision=6
````
