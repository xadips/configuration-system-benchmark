resource "oci_identity_compartment" "vm-compartment" {
    # Required
    compartment_id = "${var.tenancy_ocid}"
    description = "Compartment for VMs"
    name = "vm-compartment"
}

