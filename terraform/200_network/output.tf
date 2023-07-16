output "rocketchat_app_security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.rocketchat_app_security_group.*.id
}

output "rocketchat_app_security_group_name" {
  description = "The name of the security group"
  value       = aws_security_group.rocketchat_app_security_group.*.name
}

output "rocketchat_app_security_group_description" {
  description = "The description of the security group"
  value       = aws_security_group.rocketchat_app_security_group.*.description
}