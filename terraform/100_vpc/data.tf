
data "aws_caller_identity" "current" {}

data "aws_vpcs" "vpcs" {}

data "aws_vpc" "vpc" {
  id = tolist(data.aws_vpcs.vpcs.ids)[0]
}

data "aws_subnets" "subnets" {
    filter {
        name   = "vpc-id"
        values = [data.aws_vpc.vpc.id]
    }
}
 
data "aws_subnet" "subnet" {
  for_each = toset(data.aws_subnets.subnets.ids)
  id       = each.value
}
