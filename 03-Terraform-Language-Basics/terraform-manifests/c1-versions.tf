# Terraform Settings Block
terraform {
  required_version = ">= 1.16.0"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "8.7.0"
    }
  }
}

# Terraform Provider Block
provider "google" {
  project = "kkgcplabs01-023" # PROJECT_ID
  region = "us-central1"
}

