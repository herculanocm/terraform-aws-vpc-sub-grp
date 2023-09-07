terraform {
  required_version = ">= 1.5.6"
  required_providers {
    aws = {
      version = "~> 4.0.0"
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket  = "herculanocm-terraform-status"
    key     = "estudos/vpc/terraform.tfstate"
    region  = "eu-central-1"
    profile = "terraform"
  }
}

provider "aws" {
  region  = "eu-central-1"
  profile = "terraform"
  default_tags {
    tags = {
      owner      = "herculanocm"
      managed-by = "terraform"
    }
  }
}