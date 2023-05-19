provider "google" {
  project = "configuration-benchmark"
  region  = "europe-west2"
  zone    = "europe-west3-a"
}

resource "google_compute_instance" "debian_instance" {
  name = "debian-${count.index}"
  count = var.vm_count
  machine_type = "t2d-standard-1"

  boot_disk {
    initialize_params {
      image = "global/images/debian-10-cloud-amd64"
      #image = "ubuntu-os-cloud/ubuntu-2004-focal-v20220712"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }

  allow_stopping_for_update = true

  metadata = {
    user-data = data.template_file.user_data.rendered
  }
}
