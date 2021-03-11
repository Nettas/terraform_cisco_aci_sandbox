 # data "aci_vmm_domain" "vds" {
  #   provider_profile_dn = var.provider_profile_dn
  #   name                = "ACI-VDS"
  #   }
  
  
  resource "aci_application_epg" "epg1" {
    application_profile_dn        = aci_application_profile.app_profile.id
    name                          = "epg1"
    description                   = "epg for venetian"
    relation_fv_rs_bd             = aci_bridge_domain.bd_name_a.name
    # relation_fv_rs_dom_att        = [data.aci_vmm_domain.vds.id]
    relation_fv_rs_cons           = [aci_contract.epg1_epg2.name]
    relation_fv_rs_prov           = [aci_contract.admin.name]
  }

    resource "aci_application_epg" "epg2" {
    application_profile_dn        = aci_application_profile.app_profile.id
    name                          = "epg2"
    description                   = "epg for venetian"
    relation_fv_rs_bd             = aci_bridge_domain.bd_name_a.name
    # relation_fv_rs_dom_att        = [data.aci_vmm_domain.vds.id]
    relation_fv_rs_prov           = [aci_contract.admin.name , aci_contract.admin.name]
  }

    resource "aci_application_epg" "admin" {
    application_profile_dn        = aci_application_profile.app_profile.id
    name                          = "admin"
    relation_fv_rs_bd             = aci_bridge_domain.bd_name_a.name
    # relation_fv_rs_dom_att        = [data.aci_vmm_domain.vds.id]
    relation_fv_rs_cons           = [aci_contract.admin.name]
  }