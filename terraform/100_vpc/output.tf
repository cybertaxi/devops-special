output "vpc_cidr" {
  value = data.aws_vpc.vpc.cidr_block
}

output "arn" {
  value = data.aws_vpc.vpc.arn
}

output "subnet_cidr_blocks" {
  value = [for s in data.aws_subnet.subnet : s.cidr_block]
}