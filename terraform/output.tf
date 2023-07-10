output "app_vpc_arn" {
  value       = module.vpc_layer.arn
  description = "Application VPC ARN"
}

output "app_subnet_cidr" {
  value       = module.vpc_layer.subnet_cidr_blocks
  description = "Application Subnet CIDR blocks"
}
