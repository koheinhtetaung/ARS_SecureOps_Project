variable "user_name" {
    description = "IAM User Name"
    type = string
    default = "vault-admin-test"
}

variable "inline_po_name" {
    description = "Vault Policy Name"
    type = string
    default = "vault-admin-policy-test"
}