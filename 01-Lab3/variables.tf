variable "project_id" {
  description = "GCP project ID"
  type        = string
  default     = "kkgcplabs01-023"
}

variable "region" {
  description = "Default GCP region for the provider"
  type        = string
  default     = "us-central1"
}

variable "subnet_asia_cidr" {
  description = "Primary CIDR range for the Asia subnet"
  type        = string
  default     = "10.10.0.0/20"
}

variable "subnet_eu_cidr" {
  description = "Primary CIDR range for the Europe subnet"
  type        = string
  default     = "10.20.0.0/20"
}
