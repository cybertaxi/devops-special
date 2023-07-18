# deploy 1 master node
# Things to improve, need to scrutinise the inbound and outbound traffic.
# Start hardening after the application is setup
resource "aws_instance" "rocketchat_master_node" {
  ami           = var.ami_name
  instance_type = var.instance_type
  key_name      = "__replace_key_pair_name__"
  
  # Currently able to access from anywhere for now...
  vpc_security_group_ids = [var.instance_sg_id]
  
    tags = {
    Name = "rocketchat-master"
  }
 
}

# deploy 2 worker Rocketchat nodes
# Things to improve, need to scrutinise the inbound and outbound traffic.
# Start hardening after the application is setup
resource "aws_instance" "rocketchat_worker_nodes" {
  count = 2
  ami           = var.ami_name
  instance_type = var.instance_type
  key_name      = "__replace_key_pair_name__"
  
  # Attach the security group to the instances
  vpc_security_group_ids = [var.instance_sg_id]
  
    tags = {
    Name = "rocketchat-worker-nodes"
  }
 
}