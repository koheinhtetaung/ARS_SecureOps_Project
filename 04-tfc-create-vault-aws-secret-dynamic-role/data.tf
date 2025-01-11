data "terraform_remote_state" "vault_admin" {
  backend = "remote"

  config = {
    organization = "ARS_SecureOps_Org"
    workspaces = {
      name = "create-aws-iam-user-tfc"
    }
  }
}


