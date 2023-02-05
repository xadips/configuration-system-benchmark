
variable "diskBytes" {
    type = number
    default = 1024*1024*1024*4
}

variable "vm_count" {
    type = number
    # Set your vm count here
    default = 1
}

variable "tool" {
    type = string
    # Change your tool name here
    # Supported ansible, salt, chef
    default = "salt"
}

variable "test" {
    type = string
    default = "1"
}

variable "runtime" {
    type = string
    # libvirt or digitalocean
    default = "libvirt"
}

variable "vm_memory" {
    type = string
    default = "4096"
}

variable "vcpu_count" {
    type = number
    default = 3
}


