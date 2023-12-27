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
  type        = number
  default     = 40
  description = "Disk size of boot disk for gke node in GB"
}

# TODO:
variable "database_version" {
  type        = string
  default     = "MYSQL_5_6"
  description = "The version of the database. For example, `MYSQL_5_6` or `POSTGRES_9_6`."
}

variable "master_instance_name" {
  type        = string
  default     = ""
  description = "The name of the master instance to replicate"
}

variable "tier" {
  type        = string
  default     = "db-f1-micro"
  description = "The machine tier (First Generation) or type (Second Generation). See this page for supported tiers and pricing: https://cloud.google.com/sql/pricing"
}

variable "db_name" {
  type        = string
  default     = "default"
  description = "Name of the default database to create"
}

variable "db_charset" {
  type        = string
  default     = "utf8"
  description = "The charset for the default database"
}

variable "db_collation" {
  type        = string
  default     = "utf8_general_ci"
  description = "The collation for the default database. Example for MySQL databases: 'utf8_general_ci', and Postgres: 'en_US.UTF8'"
}

variable "user_name" {
  type        = string
  default     = "default"
  description = "The name of the default user"
}

variable "user_host" {
  default     = "%"
  description = "The host for the default user"
}

variable "user_password" {
  type        = string
  default     = ""
  description = "The password for the default user. If not set, a random one will be generated and available in the generated_user_password output variable."
}

variable "activation_policy" {
  type        = string
  default     = "ALWAYS"
  description = "This specifies when the instance should be active. Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`."
}

variable "authorized_gae_applications" {
  default     = []
  description = "A list of Google App Engine (GAE) project names that are allowed to access this instance."
}

variable "disk_autoresize" {
  type        = bool
  default     = true
  description = "Second Generation only. Configuration to increase storage size automatically."
}

variable "disk_size" {
  default     = 10
  description = "Second generation only. The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased."
}

variable "disk_type" {
  description = "Second generation only. The type of data disk: `PD_SSD` or `PD_HDD`."
  default     = "PD_HDD"
}

variable "pricing_plan" {
  default     = "PER_USE"
  description = "First generation only. Pricing plan for this instance, can be one of `PER_USE` or `PACKAGE`."
}

variable "replication_type" {
  default     = "SYNCHRONOUS"
  description = "Replication type for this instance, can be one of `ASYNCHRONOUS` or `SYNCHRONOUS`."
}

variable "database_flags" {
  default     = []
  description = "List of Cloud SQL flags that are applied to the database server"
}

variable "backup_configuration" {
  default     = {}
  description = "The backup_configuration settings subblock for the database setings"
}

variable "ip_configuration" {
  default     = {}
  description = "The ip_configuration settings subblock"
}

variable "location_preference" {
  default     = {}
  description = "The location_preference settings subblock"
}

variable "maintenance_window" {
  default     = {}
  description = "The maintenance_window settings subblock"
}

variable "replica_configuration" {
  default     = {}
  description = "The optional replica_configuration block for the database instance"
}

variable "availability_type" {
  default     = "ZONAL"
  description = "This specifies whether a PostgreSQL instance should be set up for high availability (REGIONAL) or single zone (ZONAL)."
}
