terraform {
  required_version = ">= 1.2.0"

  required_providers {

    aws = {
      source  = "hashicorp/aws"
      version = "5.38.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "tfc_esis"
    workspaces {
      name = "iac-terraform-pipeline"
    }
  }

}

