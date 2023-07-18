variable "cluster_name" {
  type    = string
  default = "app-rocketchat"
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "instance_sg" {
  description = "Instance security group created."
  type        = string
  default     = null
}

variable "ami_name" {
  description = "Instance AMI ID"
  type        = string
  default     = "ami-0df7a207adb9748c7" # Ubuntu server 22.04 LTS (HVM) 64bit (x86), SSD Volume Type
}

variable "instance_sg_id" {
  description = "RocketChat instance security group name ID"
  type        = string
  default     = null
}