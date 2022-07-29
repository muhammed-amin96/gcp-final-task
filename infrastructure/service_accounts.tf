resource "google_service_account" "bastion-svc" {
  account_id   = "bastion-svc"
  display_name = "bastion service account"
}


resource "google_project_iam_binding" "bastion-svc-binding" {
  project = "amin-gcp-project-1"
  role    = "roles/container.admin"
  members = [
    "serviceAccount:${google_service_account.bastion-svc.email}"
  ]
}
