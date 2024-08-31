variable "cluster_name" {
  description = "Name of the Talos Kubernetes cluster"
  type        = string
  default     = "puppetmaster"
}

variable "cluster_vip" {
  description = "Virtual IP of the Talos Kubernetes cluster"
  type        = string
}

variable "cluster_domain" {
  description = "Domain name of the Talos Kubernetes cluster"
  type        = string
  default     = "roguestarr.com"
}

variable "cluster_endpoint_port" {
  description = "Port of the Kubernetes API endpoint"
  type        = number
  default     = 6443
}

variable "control_plane_first_ip" {
  description = "First ip of a control-plane"
  type        = number
  default     = 50
}

variable "worker_node_first_ip" {
  description = "First ip of a worker node"
  type        = number
  default     = 60
}

variable "install_disk_device" {
  description = "Disk to install Talos on"
  type        = string
  default     = "/dev/vda"
}
