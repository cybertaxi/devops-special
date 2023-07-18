output "rocketchat_app_instance_public_ip" {
  description = "Rocketchat nodes public ip"
  value       = {
    master_node = aws_instance.rocketchat_master_node.public_ip
    master_node = aws_instance.rocketchat_worker_nodes[0].public_ip
    master_node = aws_instance.rocketchat_worker_nodes[1].public_ip
  }
}