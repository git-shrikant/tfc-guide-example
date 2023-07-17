locals{
organisation_name = "example-org-e4df2b"
}
resource "tfe_organization" "test" {
  name  = local.organisation_name
  email = "shrikant.khupat1@gmail.com"
}

resource "tfe_workspace" "test" {
  name         = "test_spc"
  organization = tfe_organization.test.id
}

resource "tfe_variable" "test" {
  key          = "TF_VAR_1"
  value        = "Shrikant"
  category     = "terraform"
  workspace_id = tfe_workspace.test.id
  description  = "a useful description"
}
 

