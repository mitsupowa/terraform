module "compartments" {
  source       = "./compartments"
  tenancy_ocid = "${var.tenancy_ocid}"
  app_tag      = "${var.app_tag}"
  environment  = "${var.environment}"

  providers = {
    oci = "oci.home"
  }
}

module "a_vcn" {
  source           = "./vcn"
  tenancy_ocid     = "${var.tenancy_ocid}"
  compartment_ocid = "${module.compartments.networks_id}"
  app_tag          = "${var.app_tag}"
  environment      = "${var.environment}"
  vcn_cidr         = "${var.vcn_cidr}"
}

module "iam" {
  source       = "./iam"
  tenancy_ocid = "${var.tenancy_ocid}"
  app_tag      = "${var.app_tag}"
  environment  = "${var.environment}"

  providers = {
    oci = "oci.home"
  }
}
