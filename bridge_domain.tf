resource "aci_bridge_domain" "bd_name_a" {
  tenant_dn = aci_tenant.tenant_a.id
  name      = var.bd_name_a
  #relation_fv_rs_ctx = aci_vrf.vrf_name_a.name
  description = "bd 4 terraform testing"
  ###most available options 
        # optimize_wan_bandwidth      = "no"
        # annotation                  = "tag_bd"
        # arp_flood                   = "no"
        # ep_clear                    = "no"
        # ep_move_detect_mode         = "garp"
        # host_based_routing          = "no"
        # intersite_bum_traffic_allow = "yes"
        # intersite_l2_stretch        = "yes"
        # ip_learning                 = "yes"
        # ipv6_mcast_allow            = "no"
        # limit_ip_learn_to_subnets   = "yes"
        # mac                         = "00:22:BD:F8:19:FF"
        # mcast_allow                 = "yes"
        # multi_dst_pkt_act           = "bd-flood"
        # name_alias                  = "alias_bd"
        # bridge_domain_type          = "regular"
        # unicast_route               = "no"
        # unk_mac_ucast_act           = "flood"
        # unk_mcast_act               = "flood"
        # vmac                        = "not-applicable"
}


    resource "aci_subnet" "subnet_a" {
        parent_dn = aci_bridge_domain.bd_name_a.id
        #bridge_domain_dn = aci_bridge_domain.bd_name_a.id
        description      = "subnet for terrafrom testing"
        ip               = var.ip_range_a
        ###additional options
        # annotation       = "tag_subnet"
        # ctrl             = "%s"
        # name_alias       = "alias_subnet"
        # preferred        = "no"
        # scope            = "private"
        # virtual          = "no"
    } 

        # resource "aci_subnet" "subnet_b" {
        # bridge_domain_dn = aci_bridge_domain.bd_name_a.id
        # description      = "subnet for terrafrom testing"
        # ip               = var.ip_range_b
        ###additional options
        # annotation       = "tag_subnet"
        # ctrl             = "%s"
        # name_alias       = "alias_subnet"
        # preferred        = "no"
        # scope            = "private"
        # virtual          = "no"
    # } 