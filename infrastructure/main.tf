terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("/home/muhmdamin/Downloads/terraformsvc-key.json")

  project = "amin-gcp-project-1"
  region  = "europe-west2"
}