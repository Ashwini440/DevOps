resource "google_container_cluster" "my-cluster" {
  name     = var.cluster_name
  location = var.region  # This is still the region, like 'us-central1'

  deletion_protection = false

  initial_node_count = var.node_count

  node_config {
    machine_type = var.node_machine_type
    disk_size_gb = 30
    # Adding zone here for node pool creation
  }

  remove_default_node_pool = false
}
