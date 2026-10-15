resource "google_compute_network" "mynetwork" {
  name                    = "mynetwork"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_asia" {
  region        = "asia-east1"
  network       = google_compute_network.mynetwork.id
  ip_cidr_range = var.subnet_asia_cidr
  name          = "subnet-asia"
}

resource "google_compute_subnetwork" "subnet_eu" {
  region        = "europe-west1"
  network       = google_compute_network.mynetwork.id
  ip_cidr_range = var.subnet_eu_cidr
  name          = "subnet-eu"
}
