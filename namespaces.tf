resource "kubernetes_namespace_v1" "Hello-World-namespace" {
  metadata {
    name = "helloworld"
  }
}

resource "kubernetes_namespace_v1" "strona1" {
  metadata{
    name = "strona1"
  }
}