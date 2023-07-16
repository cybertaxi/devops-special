############################
# VPC Layer Outputs
############################
output "app_vpc_cidr" {
  value       = module.vpc_layer.vpc_cidr
  description = "RocketChat App VPC CIDR"
}

output "app_vpc_arn" {
  value       = module.vpc_layer.arn
  description = "Application VPC ARN"
}

output "app_subnet_cidr" {
  value       = module.vpc_layer.subnet_cidr_blocks
  description = "Application Subnet CIDR blocks"
}

############################
# Network Layer Outputs
############################
output "rocketchat_app_SG" {
  value       = module.network_layer.rocketchat_app_security_group_id
  description = "Application Rocketchat Security Group"
}

output "rocketchat_app_SG_name" {
  value       = module.network_layer.rocketchat_app_security_group_name
  description = "Application Rocketchat Security Group"
}

output "rocketchat_app_SG_description" {
  value       = module.network_layer.rocketchat_app_security_group_description
  description = "Application Rocketchat Security Group"
}
