provider "google" {
  # credentials = file(var.credentials_file)
  project = var.project_id 
  region = var.region_id
}

data "google_compute_image" "image" {
  family = var.image_family
  project = var.image_project
}

resource "random_id" "instance_id" {
  byte_length = 8
}

resource "google_compute_instance" "default" {
  name = "free-e2-micro"
  machine_type = "e2-micro"
  zone=var.zone_id

  boot_disk {
    initialize_params {
      image = data.google_compute_image.image.self_link
      size = "30"
    }
  }

  metadata_startup_script = "sudo apt-get update"

  network_interface {
    network = "default"

    access_config {
  
    }
  }
}


