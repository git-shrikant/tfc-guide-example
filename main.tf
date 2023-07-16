locals{
organization_name = "example-org-e4df2b"
}

resource "tfe_variable_set" "test_spc" {
  name         = "Admin"
  description  = "Common variables for admin workspaces"
  organization = local.organization_name
}
resource "tfe_variable" "admin_variable_set_variables" {
  for_each = {
    # github provider
    "GITHUB_APP_ID" : "1111",
    "GITHUB_APP_INSTALLATION_ID" : "2222"
    "GITHUB_OWNER" : "test_tfe_variable"
    # google / google-beta provider
    
    # tfe provider
    "TFE_ORGANIZATION" : "example-org-e4df2b"
    # other
    "TF_VAR_tfc_organisation_name" : "example-org-e4df2b",
  }
key             = each.key
  value           = each.value
  category        = "env"
  variable_set_id = tfe_variable_set.test_spc.id
}
