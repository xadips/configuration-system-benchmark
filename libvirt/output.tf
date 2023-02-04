# IPs: use wait_for_lease true or after creation use terraform refresh and terraform show for the ips of domain
output "ipv4" {
  value = libvirt_domain.domain-ubuntu.*.network_interface.0.addresses
}

