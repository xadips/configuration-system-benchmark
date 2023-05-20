variable "vm_count" {
    type = number
    # Set your vm count here
    default = 1
}

variable "vm_memory" {
    type = number
    default = 4
}

variable "vm_cpu" {
    type = number
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

variable "tenancy_ocid" { 
    default = ""
}
variable "user_ocid" {
    default = ""
}
variable "fingerprint" {
    default = ""
}

variable "private_key_path" {
    default = ""
}

variable "region" {
    default = ""
}

variable "compartment_ocid" {
    default = ""
}

variable "source_ocid" {
    default = ""
}

variable "subnet_ocid" {
    default = ""
}

variable "availability_domain" {
    default = ""
}