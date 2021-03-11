resource "aci_contract" "admin" {
    tenant_dn                       = aci_tenant.tenant_a.id
    # description = ""
    name                            = "admin"
    # annotation  = "tag_contract"
    # name_alias  = "alias_contract"
    # prio        = "level1"
    # scope       = "tenant"
    # target_dscp = "unspecified"
}

resource "aci_contract_subject" "admin_subject" {
    contract_dn                     = aci_contract.admin.id
    relation_vz_rs_subj_filt_att    = [aci_filter.allow_ssh.name]
    name                            = "subject"
}

resource "aci_contract" "epg1_epg2" {
    tenant_dn                       = aci_tenant.tenant_a.id
    name                            = "web"
}

resource "aci_contract_subject" "web_subject" {
    contract_dn                     = aci_contract.epg1_epg2.id
    name                            = "subject"
    relation_vz_rs_subj_filt_att    = [aci_filter.allow_https.name , aci_filter.allow_icmp.name]
}