# I'm not spinning a new VPC, hence this was commented out.

# resource "aws_vpc" "this" {
#   cidr_block = data.aws_vpc.vpc.cidr_block

#   tags = {
#     Name = "vpc-app-rocketchat"
#   }
# }