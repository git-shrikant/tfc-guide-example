locals{
organisation_name = "example-org-e4df2b"
}
data "tfe_organization" "test" {
  name  = local.organisation_name
}

data "tfe_workspace" "test" {
  name         = "test_spc"
  organization = data.tfe_organization.test.name
}

resource "tfe_variable" "test" {
  key          = "key123"
  value        = "Shrikant"
  category     = "env"
  workspace_id = data.tfe_workspace.test.id
  description  = "a useful description"
}
 

