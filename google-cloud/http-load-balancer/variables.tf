variable "lb_name" {
  description = "Name for load balancer and associated resources"
  default     = "lb-by-terraform"
}

variable "project_id" {
  type = string
}

variable "ssl" {
  description = "Run load balancer on HTTPS and provision managed certificate with provided `domain`."
  type        = bool
  default     = true
}

variable "domain" {
  description = "Domain name to run the load balancer on. Used if `ssl` is `true`."
  type        = string
}

variable "neg_name" {
  description = "Name for network endpoint group, the backend service serverless for load balancer"
  type        = string
}
variable "neg_type" {
  description = "Type of network endpoints in this network endpoint group."
  type        = string
  default     = "SERVERLESS"
}

variable "region" {
  description = "Location for load balancer and Cloud Run resources"
  default     = "us-central1"
}

