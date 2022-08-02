# hello-graphql
Hello graphql service with helm-chart and quick deploy with load balancer AWS


# DEPLOY TO EKS

Normally it better to deploy the ingress service if you havae multiple services, but if you just want to deploy a single service and assign it to the public IP  address then this can be done in few seconds. 


```shell
helm upgrade -i graphql-service helm-chart
```


# Verify service

```shell
kubectl get service

# you should have something like   

graphql-service     LoadBalancer   10.100.211.211   a1ca92fa549f641d4b954b72ad2d5bf9-e4b3ba06fb56ede0.elb.us-west-2.amazonaws.com   80:32457/TCP   23m

```

# Port forwarding

```shell
 kubectl port-forward svc/graphql-service-helm-chart 8080:80
 ```

# Docker

```
docker build -t adiii717/hello-graphql .

docker run -it --rm -p 4000:4000 adiii717/hello-graphql:latest

```