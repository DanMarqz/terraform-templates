variable "gcp_project_id" {
  type        = string
  default     = "project-not-defined"
  description = "Poject id where terraform works"
}

variable "gcp_region" {
  type        = string
  default     = "us-central1"
  description = "Region where terraform works"
}

variable "gke_username" {
  type        = string
  default     = "username"
  description = "Username for GKE"
}

variable "gke_password" {
  type        = string
  default     = "password"
  description = "Password for username GKE"
}

variable "gke_num_nodes" {
  type        = number
  default     = 2
  description = "Number of gke nodes"
}

variable "node_disk_size" {
  type = number
  default = 40
  description = "Disk size of boot disk for gke node in GB"
}