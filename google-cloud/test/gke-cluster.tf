# https://developer.hashicorp.com/terraform/tutorials/kubernetes/gke
# GKE cluster

data "google_container_engine_versions" "gke_version" {
  location = var.gcp_region
  version_prefix = "1.27."
}

resource "google_container_cluster" "primary" {
  name     = "${var.gcp_project_id}-gke"
  location = var.gcp_region

  deletion_protection = false
  remove_default_node_pool = true
  initial_node_count       = 1

  network    = google_compute_network.vpc.name
  subnetwork = google_compute_subnetwork.subnet.name

  node_config {
    disk_size_gb = var.node_disk_size
    disk_type    = "pd-standard"
  }
}

resource "google_container_node_pool" "primary_nodes" {
  name       = google_container_cluster.primary.name
  cluster    = google_container_cluster.primary.name
  location   = var.gcp_region
  
  version = data.google_container_engine_versions.gke_version.release_channel_latest_version["STABLE"]
  node_count = var.gke_num_nodes

  node_config {
    # oauth_scopes = [
    #   "https://www.googleapis.com/auth/logging.write",
    #   "https://www.googleapis.com/auth/monitoring",
    # ]

    labels = {
      env = var.gcp_project_id
    }

    machine_type = "n1-standard-1"
    tags         = ["gke-node", "${var.gcp_project_id}-gke"]
    metadata = {
      disable-legacy-endpoints = "true"
    }

    disk_size_gb = var.node_disk_size
    disk_type    = "pd-standard"
  }
}

# provider "kubernetes" {
#   load_config_file = "false"

#   host     = google_container_cluster.primary.endpoint
#   username = var.gke_username
#   password = var.gke_password

#   client_certificate     = google_container_cluster.primary.master_auth.0.client_certificate
#   client_key             = google_container_cluster.primary.master_auth.0.client_key
#   cluster_ca_certificate = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
# }
