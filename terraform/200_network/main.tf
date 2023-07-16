resource "aws_security_group" "rocketchat_app_security_group" {
  name        = "app-ec2-rocketchat-sg"
  description = "Security group for application Rocketchat service"
  vpc_id      = data.aws_vpc.vpc.id
}

module "rocketchat_app_security_group_rules" {
  source = "../modules/security_group"

  create_sg         = true
  security_group_id = aws_security_group.rocketchat_app_security_group.id
  ingress_with_cidr_blocks = [
    # Will harden the application traffic, as for now, allow all.
    # {
    #   description = "Allow all incoming HTTPS traffic within the VPC"
    #   rule        = "https-443-tcp"
    #   cidr_blocks = data.aws_vpc.vpc.cidr_block
    # },
    {
      description = "Allow ALL incoming SSH TCP traffic"
      rule        = "ssh-tcp"
      cidr_blocks = data.aws_vpc.vpc.cidr_block
    },
    {
      description = "Allow Dev incoming SSH TCP traffic"
      rule        = "ssh-tcp"
      cidr_blocks = "__replace_with_my_ipaddr__"
    },
    # {
    #   description = "Allow ALL incoming SSH TCP traffic"
    #   rule        = "all-tcp"
    #   cidr_blocks = data.aws_vpc.vpc.cidr_block
    # },
    {
      description = "Allow ALL HTTPS access"
      rule        = "https-443-tcp"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  egress_with_cidr_blocks = [
    {
      description = "Allow ALL outgoing traffic"
      rule        = "all-all"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}