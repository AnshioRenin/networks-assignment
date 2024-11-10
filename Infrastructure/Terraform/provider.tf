terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region # Default configuration
}

provider "aws" {
  alias                    = "profile_config"
  shared_config_files      = ["~/.aws/configuration"]
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "ANSHIO_PROJECT"
}
