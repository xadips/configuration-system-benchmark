data "template_file" "user_data" {
  template = file("${path.module}/../initconf/cloud_init_${var.tool}.cfg")

  vars = {
    ssh_pub_key = var.ssh_pub_key
    tool = var.tool
    test = var.test
    host_ip = var.host_ip
  }
}