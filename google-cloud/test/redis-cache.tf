# https://cloud.google.com/memorystore/docs/redis/create-instance-terraform

resource "google_redis_instance" "my_memorystore_redis_instance" {
  name           =  "${var.gcp_project_id}-redis"
  tier           = "BASIC"
  memory_size_gb = 2
  region         = "us-central1"
  redis_version  = "REDIS_6_X"
}