data "template_file" "user_data" {
  template = file("${path.module}/cloud_init.cfg")

  vars = {
    tool = var.tool
    ssh_private_key = var.ssh_private_key
    ssh_pub_key = var.ssh_pub_key
  }
}

data "template_file" "network_config" {
  template = file("${path.module}/network_config.cfg")
}

