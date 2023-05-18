variable "do_token" {
    type = string 
    default = "do token" 
}
variable "pvt_key" {
    type = string
    # Private key location on running machine
    default = "/home/random/.ssh/id_rsa"
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
    default = "ansible"
}

variable "test" {
    type = string
    default = "5"
}

variable "ssh_pub_key"{
    type = string
    default = ""
}


variable "host_ip" {
    type = string
    default = "ip to send timigns via tcp"
}
