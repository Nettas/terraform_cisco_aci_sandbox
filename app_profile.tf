resource "aci_application_profile" "app_profile" {
  tenant_dn  = aci_tenant.tenant_a.id
  name       = var.app_profile_name_a
  #annotation = "tag1,tag2"
  name_alias = var.app_profile_alias_name_a
  #prio       = "level1"
}