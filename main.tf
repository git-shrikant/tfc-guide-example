locals{
organization_name = "git-shrikant"
}

resource "tfe_variable_set" "test_spc" {
  name         = "test_spc"
  description  = "Common variables for admin workspaces"
  organization = local.organization_name
}
    = each.key
  value           = each.value
  category        = "env"
 # variable_set_id = tfe_variable_set.test_spc.id
}
