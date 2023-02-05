data "template_file" "user_data" {
  template = file("${path.module}/../initconf/cloud_init_${var.tool}.cfg")

  vars = {
    tool = var.tool
    test = var.test
    host_ip = var.host_ip
  }
}

