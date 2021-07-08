
terraform {
  required_providers {
    aws = {
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "terraform-ltips"
    key = "terraform-test.tfstate"
    region = "us-east-1"
  }
}
provider "aws" {
  region = "us-east-1"
  alias = "east"
}

provider "aws" {
  region = "us-west-2"
  alias = "west"
}