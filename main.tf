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
  key          = "ttttt"
  value        = "Shrikant"
  category     = "terraform"
  workspace_id = data.tfe_workspace.test.id
  description  = "a useful description"
}
 

