resource "google_compute_instance" "debian_instance" {
  name = "debian-${count.index}"
  count = var.vm_count
  machine_type = "n1-standard-1"

  boot_disk {
    source = google_compute_disk.gdisk[count.index].name
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

resource "google_compute_disk" "gdisk" {
  name  = "gdisk-${count.index}"
  count = var.vm_count
  type  = "pd-ssd"
  image = "global/images/debian-10-cloud-amd64"
  size = 10
}
