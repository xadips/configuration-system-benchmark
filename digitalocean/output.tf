output "droplet_ip_addresses" {
  value = digitalocean_droplet.debian-do.*.ipv4_address
}
