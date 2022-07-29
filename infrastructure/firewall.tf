resource "google_compute_firewall" "ssh-allow" {
  project   = "amin-gcp-project-1"
  name      = "ssh-allow"
  network   = google_compute_network.my-vpc.name
  direction = "INGRESS"
  priority = "1000"
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  source_ranges = ["35.235.240.0/20"] # IAP
  target_tags   = ["bastion"]
}