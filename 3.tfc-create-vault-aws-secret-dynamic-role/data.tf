data "terraform_remote_state" "vault_admin" {
  backend = "remote"

  config = {
    organization = "ARS_SecureOps_Org"
    workspaces = {
      name = "create-aws-iam-user-tfc"
    }
  }
}


# data "vault_aws_access_credentials" "master_iamadmin_creds" {
#   backend = vault_aws_secret_backend.aws.path
#   role    = vault_aws_secret_backend_role.iam_admin_dynamic_role.name
# }