resource "kubernetes_service_v1" "elknp" {
  metadata {
    name = "elknp"
    namespace = "default"
  }
  spec {
      selector = {
      app="elasticsearch-master"
    }
    port {
      port = 9200
      target_port = 9200

      node_port = 30920
    }
    type = "NodePort"
  }
}