variable "loadbalancerport" {
  type = number
  default = 30001
}
variable "nodeportport" {
  type = number
  default = 30002
}

variable "dns" {
  type = string
  default = "nginx.192.168.31.195.nip.io"
}