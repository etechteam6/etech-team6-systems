terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.24.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "server" {
    source = "https://github.com/etechteam6/base-iac-tf/tree/main//modules/ec2"
    num = 5
}
