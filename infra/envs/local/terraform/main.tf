resource "helm_release" "hub" {
  name      = "hub"
  chart     = "${path.module}/../../../../charts/hub"
  namespace = "default"

  set {
    name  = "image.repository"
    value = "hub"
  }

  set {
    name  = "image.tag"
    value = "latest"
  }

  set {
    name  = "service.port"
    value = "8080"
  }
}
