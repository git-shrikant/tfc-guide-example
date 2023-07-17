locals{
organisation_name = "example-org-e4df2b"
}
data "tfe_organization" "test" {
  name  = local.organisation_name
}

resource "tfe_workspace" "test" {
  name         = "test_spc"
  organization = data.tfe_organization.test.id
}

resource "tfe_variable" "test" {
  key          = "TF_VAR_1"
  value        = "Shrikant"
  category     = "terraform"
  workspace_id = tfe_workspace.test.id
  description  = "a useful description"
}
 

