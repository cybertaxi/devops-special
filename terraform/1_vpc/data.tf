# data "terraform_remote_state" "core" {
#   backend = "s3"
#   config = {
#     bucket = "tfstate-${data.aws_caller_identity.current.account_id}"
#     key    = "core/terraform.tfstate"
#     region = "ap-southeast-1"
#   }
# }

# data "aws_caller_identity" "current" {}

# data "aws_vpcs" "vpcs" {}

# data "aws_vpc" "vpc" {
#   id = tolist(data.aws_vpcs.vpcs.ids)[0]
# }

# data "aws_subnet_ids" "subnet_ids" {
#   vpc_id = data.aws_vpc.vpc.id
# }

# data "aws_subnet" "subnets" {
#   for_each = data.aws_subnet_ids.subnet_ids.ids
#   id       = each.value
# }

# data "aws_ip_ranges" "dynamodb_ip_ranges" {
#   regions  = [local.region]
#   services = ["dynamodb"]
# }

# data "aws_ip_ranges" "s3_ip_ranges" {
#   regions  = [local.region]
#   services = ["s3"]
# }

# data "aws_subnet_ids" "app_subnets" {
#   vpc_id = data.aws_vpc.vpc.id
#   filter {
#     name   = "tag:Name"
#     values = ["aws-landing-zone-Private*A"]
#   }
# }