data "terraform_remote_state" "approle" {
  backend = "remote"

  config = {
    organization = "ARS_SecureOps_Org"
    workspaces = {
      name = "08_Create_Approle_Auth_method"
    }
  }
}