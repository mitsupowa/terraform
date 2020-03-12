# Identity and access parameters

oci_base_identity = {
  api_fingerprint      = "d7:7d:6c:2b:1e:c1:99:10:59:db:17:83:20:bd:a6:54"
  api_private_key_path = "/home/raul/.oci/oci_api_key.pem"
  compartment_id       = "ocid1.tenancy.oc1..aaaaaaaaw7qkcglkhecp6bv3g2ww2tprsdwzkvwt65vuvtygo2657iddifjq"
  tenancy_id           = "ocid1.tenancy.oc1..aaaaaaaaw7qkcglkhecp6bv3g2ww2tprsdwzkvwt65vuvtygo2657iddifjq"
  user_id              = "ocid1.user.oc1..aaaaaaaawpkk6h3iifho4ymabgh3o7az6s7tfw4xfzlztnjncgiezitp7dba"
}

oci_base_general = {
  label_prefix = "dev"
  region       = "uk-london-1"
}

# networking

oci_base_vcn = {
  nat_gateway_enabled     = true
  service_gateway_enabled = true
  vcn_cidr                = "10.0.0.0/16"
  vcn_dns_label           = "base"
  vcn_name                = "base"
}

# bastion

oci_base_bastion = {
  availability_domains  = 1
  bastion_access        = "ANYWHERE"
  bastion_enabled       = true
  bastion_image_id      = "Autonomous"
  bastion_shape         = "VM.Standard.E2.2"
  bastion_upgrade       = true
  netnum                = 32
  newbits               = 13
  notification_enabled  = false
  notification_endpoint = ""
  notification_protocol = "EMAIL"
  notification_topic    = "bastion"
  ssh_private_key_path  = "/home/raul/.ssh/id_rsa"
  ssh_public_key_path   = "/home/raul/.ssh/id_rsa.pub"
  timezone              = "Australia/Sydney"
}

# admin
oci_base_admin = {
  availability_domains      = 1
  admin_enabled             = true
  admin_image_id            = "Oracle"
  admin_shape               = "VM.Standard.E2.2"
  admin_upgrade             = false
  enable_instance_principal = true
  netnum                    = 33
  newbits                   = 13
  notification_enabled      = false
  notification_endpoint     = ""
  notification_protocol     = "EMAIL"
  notification_topic        = "admin"
  ssh_private_key_path      = "/home/raul/.ssh/id_rsa"
  ssh_public_key_path       = "/home/raul/.ssh/id_rsa.pub"
  timezone                  = "Australia/Sydney"
}

#tagging
tagging = { 
  computetag    =  { "Envrionment" = "UAT" }
  networktag    =   { "Name" = "TerrformedVCN"}
}
