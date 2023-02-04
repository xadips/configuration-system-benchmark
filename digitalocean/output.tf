output "droplet_ip_addresses" {
  value = digitalocean_droplet.ubuntu-do.*.ipv4_address
}
