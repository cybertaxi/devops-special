variable "cluster_name" {
  default = "Rocket-app-cluster"
}

variable "instance_type" {
  default = "t2.micro"
}

data "aws_caller_identity" "current" {}

data "aws_vpcs" "vpcs" {}

data "aws_vpc" "vpc" {
  # take first VPC ID, Assuming it's 1
  id = tolist(data.aws_vpcs.vpcs.ids)[0]
}

data "aws_subnet" "subnet" {
  id = "subnet-05f434a7e6d9da761"  # Specify the ID of the subnet you want to retrieve information for
}

output "subnet_cidr_block" {
  value = data.aws_vpc.vpc.arn
}


# variable "vpc_cidr_block" {
#   default = data.aws_vpc.vpc
# }

# variable "subnet_cidr_block" {
#   default = "172.31.32.0/20"
# }

#----------------
# data "aws_subnet" "subnet" {
#   id = "subnet-12345678"  # Specify the ID of the subnet you want to retrieve information for
# }

# output "subnet_cidr_block" {
#   value = data.aws_subnet.subnet.cidr_block
# }
