
variable "diskBytes" {
    type = number
    default = 1024*1024*1024*4
}

variable "vm_count" {
    type = number
    # Set your vm count here
    default = 3
}

variable "tool" {
    type = string
    # Change your tool name here
    # Supported ansible, salt, chef
    default = "ansible"
}

variable "test" {
    type = string
    default = "2"
}


