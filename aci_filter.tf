resource "aci_filter" "allow_https" {
    tenant_dn = aci_tenant.tenant_a.id
    name      = "allow_https"
}

resource "aci_filter" "allow_ssh" {
    tenant_dn = aci_tenant.tenant_a.id
    name      = "allow_ssh"
}

resource "aci_filter" "allow_icmp" {
    tenant_dn = aci_tenant.tenant_a.id
    name      = "allow_icmp"
}

resource "aci_filter_entry" "https" {
    name        = "https"
    filter_dn   = aci_filter.allow_https.id
    ether_t     = "ip"
    prot        = "tcp"
    d_from_port = "8080"
    d_to_port   = "8080"
    stateful    = "yes"
}

resource "aci_filter_entry" "ssh" {
    name        = "ssh"
    filter_dn   = aci_filter.allow_ssh.id
    ether_t     = "ip"
    prot        = "tcp"
    d_from_port = "22"
    d_to_port   = "22"
    stateful    = "yes"
}

resource "aci_filter_entry" "icmp" {
    # tenant_dn   = aci_tenant.tenant_a.id
    name        = "icmp"
    filter_dn   = aci_filter.allow_icmp.id
    ether_t     = "ip"
    prot        = "icmp"
    stateful    = "yes"
}