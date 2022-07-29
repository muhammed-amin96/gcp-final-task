resource "google_compute_subnetwork" "management-subnet" {
  name                     = "management-subnet"
  description              = "This subnet is for gcp project"
  network                  = google_compute_network.my-vpc.id
  ip_cidr_range            = "10.0.1.0/24"
  region                   = "europe-west2"
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "restricted-subnet" {
  name                     = "restricted-subnet"
  description              = "This subnet is for gcp project"
  network                  = google_compute_network.my-vpc.id
  ip_cidr_range            = "10.0.2.0/24"
  region                   = "europe-west2"
  private_ip_google_access = true
}