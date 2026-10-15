output "my_eu_instance_internal_ip" {
  description = "Internal IP of the Europe VM"
  value       = google_compute_instance.my_eu_instance.network_interface[0].network_ip
}

output "my_asia_instance_internal_ip" {
  description = "Internal IP of the Asia VM"
  value       = google_compute_instance.my_asia_instance.network_interface[0].network_ip
}
