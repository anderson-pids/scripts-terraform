provider "aws" {
  region  = "us-east-1"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket = "terraform-ltips"
    key    = "terraform-test.tfstate"
    region = "us-east-1"
  }

  # required_providers {
  #     aws = {
  #         source = "hashicorp/aws"
  #         version = "~> 3.0"
  #     }
  # }
}
