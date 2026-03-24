resource "kubernetes_deployment_v1" "nginx-app-1" {
  metadata {
    name = "nginx-app-1"
    namespace = "strona1"
    
  }
  
  spec {
    replicas = 2

    selector {
      match_labels = {
        image = "nginxStable"
      }
    }

    template {
      metadata {
        labels = {
            image = "nginxStable"
        }
      }
    
    spec {
      container {
        image = "nginx:stable"
        name = "nginx-container"
        port {
            container_port = 80
        }
      }
    }
    
  }
 }
}

resource "kubernetes_service_v1" "nginxnp" {
  metadata {
    name = "nginxnp"
    namespace = "strona1"
  }
  spec {
    selector = {
      image = "nginxStable"
    }
    port {
      port = 80
      target_port = 80

      node_port = var.nodeportport
    }
    type = "NodePort"
  }
}
# resource "kubernetes_service_v1" "nginxlb" {
#   metadata {
#     name = "nginxlb"
#     namespace = "strona1"
#   }
#   spec {
#     type = "LoadBalancer"
#     load_balancer_ip = "192.168.31.195"

#     selector = {
#       image = "nginxStable"
#     }
#     port {
#       port = 80
#       target_port = 80

#       node_port = var.loadbalancerport
#     }
#   }
  
# }