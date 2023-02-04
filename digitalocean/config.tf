data "template_file" "user_data" {
  template = file("${path.module}/cloud_init_${var.tool}.cfg")

  vars = {
    tool = var.tool
    test = var.test
    runtime = var.runtime
  }
}

