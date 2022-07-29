resource "google_compute_network" "my-vpc" {
  project                         = "amin-gcp-project-1"
  name                            = "my-vpc"
  description                     = "This vpc is for gcp project"
  auto_create_subnetworks         = false
  delete_default_routes_on_create = false
}