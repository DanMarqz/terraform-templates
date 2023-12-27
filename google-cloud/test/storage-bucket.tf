# https://cloud.google.com/storage/docs/terraform-create-bucket-upload-object

resource "google_storage_bucket" "static" {
  name          = "${var.gcp_project_id}-bucket"
  location      = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}