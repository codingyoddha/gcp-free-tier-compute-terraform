provider "google" {
  credentials = file(var.credentials_file)
  project = var.project_id 
  region = var.region_id
}

resource "random_id" "instance_id" {
  byte_length = 8
}

resource "google_compute_instance" "default" {
  name = "f1-micro-${random_id.instance_id.hex}"
  machine_type = "f1-micro"
  zone=var.zone_id

  boot_disk {
    initialize_params {
      image = var.image_id
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


