variable "workspace_name" {
  description = "Workspace Name"
  type        = string
  default     = "Step10_Create_DB_Secret_Engine" ### have to change WorkSpace Name
}
variable "org_name" {
  description = "Organization Name"
  type        = string
  default     = "SecureOps_Project" ### have to change ORG ID
}
variable "vault_url" {
  description = "The address of the Vault instance runs will access."
  type        = string
  default     = "https://hcp-vault-cluster-public-vault-88113f82.e570d4c3.z1.hashicorp.cloud:8200" ### have to change new vault cluster id
}
variable "run_role" {
  description = "TFC_VAULT_RUN_ROLE"
  type        = string
  default     = "tfc-admin-role"
}
variable "vault_namespace" {
  description = "TFC_VAULT_NAMESPACE"
  type        = string
  default     = "admin"
}
