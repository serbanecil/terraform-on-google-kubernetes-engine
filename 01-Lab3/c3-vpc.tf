resource "google_compute_network" "mynetwork" {
  name                    = "mynetwork"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet_1" {
  region        = "us-west1"
  network       = google_compute_network.mynetwork.id
  ip_cidr_range = var.subnet_1_cidr
  name          = "subnet-1"
}

resource "google_compute_subnetwork" "subnet_2" {
  region        = "us-west1"
  network       = google_compute_network.mynetwork.id
  ip_cidr_range = var.subnet_2_cidr
  name          = "subnet-2"
}
