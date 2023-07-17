locals{
organization_name = "example-org-e4df2b"
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
    "TF_VAR_tfc_organisation_name" : local.organization_name,
  }

  key             = each.key
  value           = each.value
  category        = "env"
  variable_set_id = "ws-abZuN4Tr9xopwEp9"
}

