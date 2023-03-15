# sideload-drivers-k8s
Docker image to side-load drivers using a priviledged container, for use in Kubernetes clusters that use hardware like an SR-IOV capable NIC or a vGPU capable NVIDIA device

# How to build

The Makefile has the Docker build command. By default I send the image to [tlehman/sideload-drivers-k8s](https://hub.docker.com/repository/docker/tlehman/sideload-drivers-k8s/general)

```shell
make
```

# How to deploy to a cluster

```shell 
make deploy
```

# How to undeploy from a cluster

```shell 
make undeploy
```

