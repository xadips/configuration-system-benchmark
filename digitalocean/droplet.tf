resource "digitalocean_droplet" "debian-do" {
    count = var.vm_count
    image = "debian-10-x64"
    name = "debian-${count.index}"
    region = "fra1"
    size = "s-1vcpu-1gb-amd"
    ssh_keys = [
      data.digitalocean_ssh_key.terraform.id
    ]
    user_data = data.template_file.user_data.rendered
}
