resource "oci_core_instance" "debian_instance" {
    # Required
    count = var.vm_count
    availability_domain = var.availability_domain
    compartment_id = var.compartment_ocid 
    shape = "VM.Standard.E4.Flex"
    shape_config {
        memory_in_gbs = var.vm_memory
        ocpus = var.vm_cpu 
    }
    source_details {
        source_id =  var.source_ocid
        source_type = "image"
    }

    # Optional
    display_name = "debian_instance-${count.index}"
    create_vnic_details {
        assign_public_ip = true
        subnet_id = var.subnet_ocid
    }
    metadata = {
        user_data = "${base64encode(data.template_file.user_data.rendered)}"
    } 
    preserve_boot_volume = false
}