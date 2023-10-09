terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.15.0"
    }
  }
}

provider "oci" {
  region           = var.region
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
}

resource "oci_core_vcn" "vcn1" {
  cidr_block     = var.cidr-block
  compartment_id = var.compartment_id
  display_name   = "terraform-vcn"
  dns_label      = var.dns_label

  #freeform_tags = local.tags
}