resource "aci_tenant" "tenant_a" {
  name        = var.tenant_a
  description = "tenant for terraform tetsing"
}

# resource "aci_tenant" "tenant_b" {
#   name        = var.tenant_b
#   description = "tenant for terraform tetsing"
# }

#terraform import aci_tenant.common <Dn>