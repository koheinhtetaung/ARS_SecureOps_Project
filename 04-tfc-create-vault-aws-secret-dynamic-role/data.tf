data "terraform_remote_state" "vault_admin" {
  backend = "remote"

  config = {
    organization = "ARS_SecureOps_Org"
    workspaces = {
      name = "02-create-aws-iam-user-tfc"
    }
  }
}


