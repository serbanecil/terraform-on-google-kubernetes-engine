resource "google_compute_firewall" "allow_ssh" {
  name        = "allow-ssh"
  description = "SSH via Identity-Aware Proxy to instances tagged allow-ssh"
  network     = google_compute_network.mynetwork.name
  direction   = "INGRESS"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  # Google's IAP TCP forwarding range, instead of SSH open to 0.0.0.0/0
  source_ranges = ["35.235.240.0/20"]

  target_tags = [local.ssh_tag]
}

resource "google_compute_firewall" "custom_fw" {
  name        = "custom-fw"
  description = "ICMP and SSH from the lab subnets to instances tagged custom-ssh"
  network     = google_compute_network.mynetwork.name
  direction   = "INGRESS"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = [var.subnet_asia_cidr, var.subnet_eu_cidr]

  target_tags = [local.custom_ssh_tag]
}
