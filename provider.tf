terraform {
  required_version = "<=1.7.4"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  backend "s3" {
    bucket = "postech-g38-rds-terraform"
    key    = "terraform.tfstate" # file path where the file will be saved
    region = "us-west-2"  # aws s3 create region
  }
}

provider "aws" {
  region  = "us-west-2"
}


