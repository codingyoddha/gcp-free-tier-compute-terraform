variable "image_id" {
  type = string
  description = "The id of the machine image"
}

variable "project_id" {
  type = string
  description = "The id of the GCP project"
}

variable "credentials_file" {
  type = string
  description = "The name of the crendentials file for the service account"
}

variable "region_id" {
  type = string
  description = "The name of the valid regions for free-tier eligibility"
}

variable "zone_id" {
  type = string
  description = "The name of the zone"
}

variable "image_family" {}

variable "image_project" {}
