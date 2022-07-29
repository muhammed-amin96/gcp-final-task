resource "google_compute_instance" "bastion" {
  name         = "bastion"
  machine_type = "e2-micro"
  zone         = "europe-west2-a"

  tags = ["management-subnet", "bastion"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      size = 10
      type = "pd-standard"
    }
  }

  network_interface {
    network    = google_compute_network.my-vpc.name
    subnetwork = google_compute_subnetwork.management-subnet.name
  }
  metadata_startup_script = file("user_data.sh")

  service_account {
    email  = google_service_account.bastion-svc.email
    scopes = ["cloud-platform"]
  }
}