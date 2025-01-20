variable "aws_region" {
  type        = string
  default     = "ap-southeast-1"
  description = "AWS region for all resources"
}

variable "tfc_aws_audience" {
  type        = string
  default     = "aws.workload.identity"
  description = "The audience value to use in run identity tokens"
}

variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
  description = "The hostname of the TFC or TFE instance you'd like to use with AWS"
}

variable "tfc_aws_role" {
  type        = string
  default     = "tfc-aws-role"
  description = "Role Name for TFC AWS Auth"
}

variable "tfc_aws_policy_arn" {
  type        = string
  default     = "arn:aws:iam::aws:policy/AdministratorAccess"
  description = "Policy using in Role for TFC AWS Auth"
}

variable "tfc_organization_name" {
  type        = string
  description = "The name of your Terraform Cloud organization"
}

variable "tfc_project_name" {
  type        = string
  description = "The project under which a workspace will be created"
}

variable "tfc_workspace_name" {
  type        = string
  description = "The name of the workspace that you'd like to create and connect to AWS"
}
