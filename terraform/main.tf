provider "aws" {
  # source  = "hashicorp/aws"
  # shared_credentials_file = "~/.aws/credentials"
  # profile                 = "terraform"
  region                  = "__replace_tf_provider_region__"
}

terraform {
  backend "s3" {
    bucket         = "cybertaxi-tfstate-devops"
    dynamodb_table = "tf-lock"
    key            = "core/terraform.tfstate"
    region         = "__replace_tf_provider_region__"
  }
}

module "vpc_layer" {
  source = "./1_vpc"
}

# module "backend-1" {
#   source = "terraform/1_vpc"
# } 