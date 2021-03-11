resource "aci_vrf" "vrf_name_a" {
  tenant_dn = aci_tenant.tenant_a.id
  name      = var.vrf_name_a
  description = "vrf for terraform testing" 
}