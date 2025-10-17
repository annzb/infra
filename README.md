```bash
brew install terraform ansible kind kubectl helm wireguard-tools

# Install Vault
brew tap hashicorp/tap
brew install hashicorp/tap/vault
```

```bash
kind create cluster --config infra/envs/local/kind-cluster.yaml
kubectl cluster-info
```