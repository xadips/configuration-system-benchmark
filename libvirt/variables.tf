
variable "diskBytes" {
    type = number
    default = 1024*1024*1024*10 
}

variable "vm_count" {
    type = number
    default = 3
}

variable "tool" {
    type = string
    # Change your tool name here
    # Supported ansible, salt, chef
    default = "ansible"
}

