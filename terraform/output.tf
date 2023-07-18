############################
# VPC Layer Outputs
############################
output "vpc_info" {
  description   = "VPC information"
  value         = {
    vpc_cidr    = module.vpc_layer.vpc_cidr
    vpc_arn     = module.vpc_layer.arn
    subnet_cidr = module.vpc_layer.subnet_cidr_blocks
  }
}

############################
# Network Layer Outputs
############################
output "rocketchat_app_SG_info" {
  description   = "Application Rocketchat Security Group Info"
  value         = {
    app_sg_id   = module.network_layer.rocketchat_app_security_group_id
    app_sg_name = module.network_layer.rocketchat_app_security_group_name
    app_sg_desc = module.network_layer.rocketchat_app_security_group_description
  }
}

############################
# App Layer Outputs
############################
output "rocket_chat_nodes_public_ips" {
  value       = module.app_layer.rocketchat_app_instance_public_ip
  description = "Master and worker nodes public IPs"
}