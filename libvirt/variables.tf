
variable "diskBytes" {
    type = number
    default = 1024*1024*1024*8
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
    default = "chef"
}

variable "test" {
    type = string
    default = "2"
}

variable "host_ip"  {
    type = string
    # 192.168.122.1
    #
    default = "192.168.122.1"
}

variable "vm_memory" {
    type = string
    default = "1024"
}

variable "vcpu_count" {
    type = number
    default = 1
}




