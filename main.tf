locals{
organisation_name = "example-org-e4df2b"
}
resource "tfe_variable_set" "test" {
  name         = "admin"
  organization = local.organisation_name
}
resource "tfe_variable" "admin_variable_set_variables" {
  for_each = {
    # github provider
    "GITHUB_APP_ID" : "111",
    "GITHUB_APP_INSTALLATION_ID" : "111"
    "GITHUB_OWNER" : "git-shrikant"
    # google / google-beta provider
    
    # tfe provider
   # "TFE_ORGANIZATION" : local.organisation_name
    # other
    "TF_VAR_tfc_organisation_name" : local.organisation_name,
  }

  key             = each.key
  value           = each.value
  category        = "env"
  variable_set_id = tfe_variable_set.test.id 
}

