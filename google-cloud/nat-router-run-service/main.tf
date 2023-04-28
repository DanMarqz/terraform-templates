############# INFO CONFIG #############
############# https://cloud.google.com/run/docs/configuring/static-outbound-ip#terraform #############

# Create the VPC network to use.
resource "google_compute_network" "default" {
  provider	= google-beta
  name			= var.vpc_network_name
  auto_create_subnetworks = false
}

# Create a subnetwork in the VPC for the Serverless VPC Access connector.
resource "google_compute_subnetwork" "default" {
  provider      = google-beta
  name          = var.vpc_subnet_name
  ip_cidr_range = var.subnet_cidr_range
  network       = google_compute_network.default.id
  region        = var.subnet_region
}

#Create a Serverless VPC Access connector.
resource "google_project_service" "vpc" {
  provider          	= google-beta
  service           	= "vpcaccess.googleapis.com"
  disable_on_destroy	= false
}

resource "google_vpc_access_connector" "default" {
  provider	= google-beta
  name			= var.vpc_connector_name
  region		= var.subnet_region

  subnet {
    name = google_compute_subnetwork.default.name
  }

  # Wait for VPC API enablement
  # before creating this resource
  depends_on = [
      google_project_service.vpc
  ]
}

# Create a new Cloud Router to program a NAT gateway.
resource "google_compute_router" "default" {
  provider = google-beta
  name     = var.router_name
  network  = google_compute_network.default.name
  region   = google_compute_subnetwork.default.region
}

# Reserve a static IP address.
resource "google_compute_address" "default" {
  provider = google-beta
  name     = var.static_ip_name
  region   = google_compute_subnetwork.default.region
}

# Create a Cloud NAT gateway configuration on this router to route the traffic originating from the VPC network using the static IP address you created
resource "google_compute_router_nat" "default" {
  provider = google-beta
  name     = var.nat_gateway_name
  router   = google_compute_router.default.name
  region   = google_compute_subnetwork.default.region

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips                = [google_compute_address.default.self_link]

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name                    = google_compute_subnetwork.default.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}

# This Cloud Run service uses a VPC connector and routes all egress traffic through it.
resource "google_cloud_run_service" "default" {
  provider = google-beta
  name     = var.cloud_run_name_service
  location = google_compute_subnetwork.default.region

  template {
    spec {
      containers {
        image = var.docker_image_service
      }
    }

    metadata {
      annotations = {
        "run.googleapis.com/vpc-access-connector" = google_vpc_access_connector.default.name
        "run.googleapis.com/vpc-access-egress"    = "all-traffic"
        "autoscaling.knative.dev/maxScale"        = "5"
      }
    }
  }

  metadata {
    annotations = {
      "run.googleapis.com/ingress" = "all"
    }
  }

  lifecycle {
    ignore_changes = [
      metadata[0].annotations,
    ]
  }
}