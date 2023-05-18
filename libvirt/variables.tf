
variable "diskBytes" {
    type = number
    # 1024^3 GB * N = how many GB you want in your VM
    default = 1024*1024*1024*8
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
    #
    default = "192.168.122.1"
}

variable "ssh_pub_key"{
    type = string
    default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDFlQw5oBQ8hs2RqRNTaXkJ6bXdW8XQf0iw5WMy4ONJtlKc0ku+bPUZ2hVX1G5mW3W3LWcjdjfA5Qh/Be2r2lJEDhBR8ZF8Md/xzT49SRb9Iaz12dZ02LBNOIYcMwv5AmVQbMvHJWqaa0m1Gzr/GV8l60oXf4F4bFGslOEq3v8MAuY9+NZVb7RI8ZpD3cSAJB1jtPX9CXZtaN0VebTy985g3hIZ18H2M9diqIm8+XApee0U9oqUT1k47LyBrTyHOc9fYDrWEU5+p3Ydp5Vt1mT4l6saLFEhjVUAPDpVJGZ94WsRjTD20mLDmIbtLkWApw+XHa/02ky5LLwbzqqQoagh4IxWyDkEFB7EqpCy366XXlAbrcrg6GArFjPJxHPkN36zJhuqr5wt52FmOK6+z/RVzKAe2xshyKBHi704kwepiJzgeI/+jihs8MQOVV5V1ZzEjtCMTxlDIHqfGHFoP8uB705jZOHG4G7N03g1yvLmAnUNOZ0qhf4Q7RgRvwCr/EqtjMN7GUnVYlnhaVjEAd8e6iXCZazzp/v1x6YGvjYSVl38JS+tFGDZai4/WCvb1EQKXC7owgoWqpBfL5twPZHTU59Ngqul+UixNVzfXOVtYTTZsN0tN/qEX3NHfF188R2eTYeu7BXQCLsqAwLR5IeMO+HZtPB3MpCJ2RZxikoA5w== spidax1881@gmail.com"
}

variable "vm_memory" {
    type = string
    default = "1024"
}

variable "vcpu_count" {
    type = number
    default = 1
}




