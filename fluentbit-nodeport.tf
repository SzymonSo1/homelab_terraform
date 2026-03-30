resource "kubernetes_service_v1" "fluentnp" {
  metadata {
    name = "fluentnp"
    namespace = "default"
  }
  spec {
    port {
      port = 2020
      target_port = 2020

      node_port = 32020
    }
    type = "NodePort"
  }
}