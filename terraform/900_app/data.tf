
data "aws_caller_identity" "current" {}

data "aws_vpcs" "vpcs" {}

data "aws_vpc" "vpc" {
  id = tolist(data.aws_vpcs.vpcs.ids)[0]
}

