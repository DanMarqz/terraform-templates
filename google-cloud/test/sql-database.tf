# https://www.cloudskillsboost.google/focuses/1215?parent=catalog
resource "random_id" "name" {
  provider = random
  byte_length = 2
}

resource "google_sql_database_instance" "master" {
  name                 = "${var.gcp_project_id}-mysql"
  project              = var.gcp_project_id
  region               = var.gcp_region
  database_version     = var.database_version
  master_instance_name = var.master_instance_name
  deletion_protection = false

  settings {
    tier                        = var.tier 
    # activation_policy           = var.activation_policy
    disk_autoresize             = var.disk_autoresize
    disk_size                   = var.disk_size
    disk_type                   = var.disk_type
    pricing_plan                = var.pricing_plan
    availability_type           = var.availability_type
    # replication_type            = var.replication_type

    dynamic "backup_configuration" {
      for_each = var.backup_configuration
      content {
        enabled = lookup(backup_configuration.value, "enabled", false)
        # Agrega otros campos de backup_configuration según sea necesario
      }
    }

    dynamic "ip_configuration" {
      for_each = var.ip_configuration
      content {
        ipv4_enabled    = lookup(ip_configuration.value, "ipv4_enabled", true)
        private_network = lookup(ip_configuration.value, "private_network", null)
        require_ssl     = lookup(ip_configuration.value, "require_ssl", null)

        dynamic "authorized_networks" {
          for_each = lookup(ip_configuration.value, "authorized_networks", [])
          content {
            expiration_time = lookup(authorized_networks.value, "expiration_time", null)
            name            = lookup(authorized_networks.value, "name", null)
            value           = lookup(authorized_networks.value, "value", null)
          }
        }
      }
    }

    dynamic "location_preference" {
      for_each = var.location_preference
      content {
        follow_gae_application = lookup(location_preference.value, "follow_gae_application", null)
        zone                   = lookup(location_preference.value, "zone", null)
      }
    }

    dynamic "maintenance_window" {
      for_each = var.maintenance_window
      content {
        day          = lookup(maintenance_window.value, "day", null)
        hour         = lookup(maintenance_window.value, "hour", null)
        update_track = lookup(maintenance_window.value, "update_track", null)
      }
    }
  }

  timeouts {
    create = "60m"
    delete = "2h"
  }
}


