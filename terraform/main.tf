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
  source = "./100_vpc"
}

module "network_layer" {
  source = "./200_network"
}

module "app_layer" {
  source = "./900_app"
  instance_sg_id = module.network_layer.rocketchat_app_security_group_id[0]
}
