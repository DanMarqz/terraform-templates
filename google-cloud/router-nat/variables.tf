variable "vpc_network_name" {
  type        = string
  default     = "vpc-network-terraform-default"
  description = "Defines the name of the VPC Network, if the variable is not defined, it is created with the default name."
}

variable "vpc_subnet_name" {
  type        = string
  default     = "vpc-subnet-terraform-default"
  description = "Defines the name of the VPC subnetwork, if the variable is not defined, it is created with the default name."
}

variable "subnet_cidr_range" {
  type        = string
  default     = "10.124.0.0/28"
  description = "Defines IP CIDR range to the subnetwork, if the variable is not defined, it will be created with the default range."
}

variable "subnet_region" {
  type        = string
  default     = "us-central1"
  description = "Defines the region where the subnetwork will be located. By default it will be located in us-central1."
}

variable "vpc_connector_name" {
  type        = string
  default     = "vpc-connector-terraform-default"
  description = "Defines the name of the VPC Connector, if the variable is not defined, it is created with the default name."
}

variable "router_name" {
  type        = string
  default     = "router-ip-terraform-default"
  description = "Defines the name of the Router that programs the NAT Gateway, if the variable is not defined, it is created with the default name."
}

variable "static_ip_name" {
  type        = string
  default     = "static-ip-terraform-default"
  description = "Defines the name of the Static IP reserved for the router, if the variable is not defined it is created with the default name."
}

variable "nat_gateway_name" {
  type        = string
  default     = "nat-gateway-terraform-default"
  description = "Defines the name of the NAT Gateway that will be used by the router, if the variable is not defined it is created with the default name."
}