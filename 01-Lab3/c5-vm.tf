resource "google_compute_instance" "my_eu_instance" {
  name         = "my-eu-instance"
  machine_type = "e2-micro"
  zone         = "europe-west1-a"

  tags = [local.ssh_tag, local.custom_ssh_tag]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_eu.id
  }
}

resource "google_compute_instance" "my_asia_instance" {
  name         = "my-asia-instance"
  machine_type = "e2-micro"
  zone         = "asia-east1-a"

  tags = [local.ssh_tag, local.custom_ssh_tag]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_asia.id
  }
}
