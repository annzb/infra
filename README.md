```bash
brew install terraform ansible kind kubectl helm wireguard-tools

# Install Vault
brew tap hashicorp/tap
brew install hashicorp/tap/vault
```

### Build App Image
```bash
docker build -t hub:latest -f app/Dockerfile app/
```

### Run Local Cluster
```bash
kind create cluster --config infra/envs/local/kind-cluster.yaml
kubectl cluster-info
```

### Load Image to Local Cluster
```bash
kind load docker-image hub:latest --name hub-local
```

### Deploy
```
helm install hello ./charts/hub
kubectl get pods
kubectl get svc
```