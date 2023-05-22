resource "libvirt_pool" "debian" {
  name = "debian"
  type = "dir"
  path = "/tmp/terraform-provider-libvirt-pool-debian"
}


# We fetch the latest debian release image from their mirrors
resource "libvirt_volume" "base-debian-qcow2" {
  name   = "base-debian-qcow2"
  pool   = libvirt_pool.debian.name
  # Testing framework was made with debian-LTS 20.04 in mind
  source = "https://cloud.debian.org/images/cloud/buster/20230504-1370/debian-10-genericcloud-amd64-20230504-1370.qcow2"
  format = "qcow2"
}