variable "bucket_name_state" {
  description = "Bucket name for remote state"
  type        = string
  default     = "herculanocm-terraform-status"
}

variable "region_bucket_state" {
  description = "Region bucket for remote state"
  type        = string
  default     = "eu-central-1"
}

variable "bucket_key_state" {
  description = "Bucket key state"
  type        = string
  default     = "estudos/vpc/terraform.tfstate"
}

variable "aws_provider_default_region" {
  description = "Aws default region"
  type        = string
  default     = "eu-central-1"
}

variable "aws_provider_default_profile_name" {
  description = "Aws default profile"
  type        = string
  default     = "terraform"
}