resource "libvirt_volume" "debian-qcow2" {
  count = var.vm_count
  name = "debian-qcow2-${count.index}"
  pool   = libvirt_pool.debian.name
  format = "qcow2"
  size = var.diskBytes
  base_volume_id = libvirt_volume.base-debian-qcow2.id
}


# https://github.com/dmacvicar/terraform-provider-libvirt/blob/master/website/docs/r/cloudinit.html.markdown
resource "libvirt_cloudinit_disk" "commoninit" {
  name           = "commoninit.iso"
  user_data      = data.template_file.user_data.rendered
  network_config = data.template_file.network_config.rendered
  pool           = libvirt_pool.debian.name
}

# Create the machine
resource "libvirt_domain" "domain-debian" {
  count = var.vm_count
  name   = "debian-terraform-${count.index}"
  memory = var.vm_memory 
  vcpu   = var.vcpu_count

  cloudinit = libvirt_cloudinit_disk.commoninit.id

  network_interface {
    network_name = "default"
    wait_for_lease = true
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  console {
    type        = "pty"
    target_type = "virtio"
    target_port = "1"
  }

  disk {
    volume_id = libvirt_volume.debian-qcow2[count.index].id
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}

