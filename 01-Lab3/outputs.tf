output "my_instance_1_internal_ip" {
  description = "Internal IP of instance 1 (subnet-1)"
  value       = google_compute_instance.my_instance_1.network_interface[0].network_ip
}

output "my_instance_2_internal_ip" {
  description = "Internal IP of instance 2 (subnet-2)"
  value       = google_compute_instance.my_instance_2.network_interface[0].network_ip
}
