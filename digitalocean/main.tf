terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "terraform" {
  name = "arch"
}


resource "digitalocean_droplet" "ubuntu-do" {
    count = var.vm_count
    image = "ubuntu-20-04-x64"
    name = "ubuntu-${count.index}"
    region = "fra1"
    size = "s-1vcpu-1gb"
    ssh_keys = [
      data.digitalocean_ssh_key.terraform.id
    ]
    user_data = data.template_file.user_data.rendered
}
