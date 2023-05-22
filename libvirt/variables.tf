variable "diskBytes" {
    type = number
    # 1024^3 GB * N = how many GB you want in your VM
    default = 1024*1024*1024*10
}

variable "vm_count" {
    type = number
    # Set your vm count here
    default = 1
}

variable "tool" {
    type = string
    # Change your tool name here
    # Supported ansible, salt, chef, puppet
    default = "ansible"
}

variable "test" {
    type = string
    # test id, file name format $1-name.ext where $1 is test number
    default = "1"
}

variable "host_ip"  {
    type = string
    # 192.168.122.1
    default = "192.168.122.1"
}

variable "ssh_pub_key"{
    type = string
    default = ""
}

variable "vm_memory" {
    type = string
    default = "1024"
}

variable "vcpu_count" {
    type = number
    default = 1
}

variable "port" {
    type = number
    default = 0
}
