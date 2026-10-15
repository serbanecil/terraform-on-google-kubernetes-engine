resource "google_compute_instance" "my_instance_1" {
  name         = "my-instance-1"
  machine_type = "e2-micro"
  zone         = "us-west1-a"

  tags = [local.ssh_tag, local.custom_ssh_tag]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_1.id
  }
}

resource "google_compute_instance" "my_instance_2" {
  name         = "my-instance-2"
  machine_type = "e2-micro"
  zone         = "us-west1-b"

  tags = [local.ssh_tag, local.custom_ssh_tag]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.subnet_2.id
  }
}
