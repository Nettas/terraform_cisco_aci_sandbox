variable "aci_url" {
  type = string
}

variable "aci_username" {
  type = string
}

variable "aci_password" {
  type = string
}

variable "tenant_a" {
  type = string
}

variable "tenant_b" {
  type = string
}

variable "vrf_name_a" {
  type = string
}

variable "bd_name_a" {
  type = string
}

variable "ip_range_a" {
  type = string
}

variable "app_profile_name_a" {
  type = string
}

variable "ip_range_b" {
  type = string
}

variable "app_profile_alias_name_a" {
  type = string
}

variable "epg_name_a" {
  type = string
}

variable "provider_profile_dn" {
  default = "uni/vmmp-VMware"
}

# variable "private_key_name" {
#   default = "terraform"
#   type = string
# }
# variable "private_key_data" {
#   type = string
# }