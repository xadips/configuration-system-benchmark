# output "public_ip" {
#   description = "Public IPs of created instances. "
#   value       = oci_core_instance.instance.*.public_ip
# }

output "InstancePublicIPs" {
  value = ["${oci_core_instance.debian_instance.*.public_ip}"]
}