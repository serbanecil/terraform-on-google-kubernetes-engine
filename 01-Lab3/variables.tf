variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "kkgcplabs01-023"
}

variable "region" {
  description = "Default GCP region for the provider"
  type        = string
  default     = "us-west1"
}

variable "subnet_1_cidr" {
  description = "Primary CIDR range for the first subnet"
  type        = string
  default     = "10.10.0.0/20"
}

variable "subnet_2_cidr" {
  description = "Primary CIDR range for the second subnet"
  type        = string
  default     = "10.30.0.0/20"
}
