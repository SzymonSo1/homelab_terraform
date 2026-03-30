resource "kubernetes_pod_v1" "loggerpod" {
  metadata {
    name = "loggerpod"
    namespace = "default"
  }
  spec {
    container {
      name = "loggerc"
      image = "busybox"
      args = [ 
        "/bin/sh", 
        "-c", 
        "echo $(date) 'INFO hello from logger [k3s]'"
        # "> while true; do",
        # "   echo '$(date) INFO Hello from k3s logger!';",
        # "   echo '$(date) ERROR Something went wrong';",
        # "   sleep 5;",
        # "done"
        
       ]  
    }
  }
}