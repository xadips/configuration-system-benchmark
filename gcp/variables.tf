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

variable "ssh_pub_key" {
    # placeholder for other providers
    type = string
    default = ""
}

variable "test" {
    type = string
    default = "5"
}

variable "host_ip" {
    type = string
    default = "enter ur ip"
}

variable "port" {
    type = number
    default = 0
}
