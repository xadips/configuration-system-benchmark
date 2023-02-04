
variable "diskBytes" { default = 1024*1024*1024*10 }

variable "tool" {
    type = string
    # Change your tool name here
    # Supported ansible, salt, chef
    default = "ansible"
}

