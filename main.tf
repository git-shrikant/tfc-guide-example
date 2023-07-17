locals{
organization_name = "example-org-e4df2b"
}

resource "tfe_variable_set" "test_spc" {
  name         = "test_spc"
  description  = "Common variables for admin workspaces"
  organization = local.organization_name
}
