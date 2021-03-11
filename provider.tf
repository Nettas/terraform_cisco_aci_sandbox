terraform {
  required_providers {
    aci = {
      source = "CiscoDevNet/aci"
      version = "0.5.4"
    }
  }
}

provider "aci" {
  username = var.aci_username
#   private_key = var.private_key_data
#   cert_name = var.private_key_name
  password = var.aci_password
  url      = var.aci_url
  insecure = true
#   version  = "0.2.1"
}