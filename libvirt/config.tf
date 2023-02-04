data "template_file" "user_data" {
  template = file("${path.module}/cloud_init.cfg")

  vars = {
    tool = var.tool
    test = var.test
  }
}

data "template_file" "network_config" {
  template = file("${path.module}/network_config.cfg")
}

