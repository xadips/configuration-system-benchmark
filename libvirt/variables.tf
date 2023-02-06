
variable "diskBytes" {
    type = number
    # 1024^3 GB * N = how many GB you want in your VM
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
    # test id, file name format $1-name.ext where $1 is test number
    default = "5"
}

variable "host_ip"  {
    type = string
    # 192.168.122.1
    #
    default = "HOST ip where to send timings"
}

variable "ssh_pub_key"{
    type = string
    default = "Your key here"
}

variable "vm_memory" {
    type = string
    default = "1024"
}

variable "vcpu_count" {
    type = number
    default = 1
}




