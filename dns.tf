resource "kubernetes_ingress_v1" "strona1dns" {
  metadata {
    name = "strona1dns"
    namespace = "strona1"
    annotations = {
      "kubernetes.io/ingress.class" = "traefik" # w rancherze jest domyslnie samo dodawane
    }
  }
  spec {
    rule {
      host = "nginx.192.168.31.195.nip.io"
      http {
        path {
          path = "/"
          path_type = "Prefix"
          backend {
            service {
              name = kubernetes_service_v1.nginxnp.metadata[0].name
              port {
                number = 80
              }
            }
          }
        }
      }
    }
  }
}