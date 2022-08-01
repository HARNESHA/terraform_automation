variable "project_name" {
  type        = string
  description = "provide name of project"
}

variable "region" {
  type        = string
  description = "provide region for ec2 and alarm creation"
}

variable "instance_type" {
  type        = string
  description = "provide instance type for ec2 instance"
}

variable "ami_id" {
  type        = string
  description = "provide ami_id for ec2 instance"
}

variable "vpc_zone_identifier" {
  type        = list(any)
  description = "enter subnet in which ec2 has to created"
}

variable "vpc_security_group_ids" {
  type        = list(any)
  description = "provide sequrity group_id for ec2 instance"
}

variable "volume_size" {
  type        = number
  description = "Entrer size of ec2 volume"
}

# variable "availability_zones" {
#   type        = list(any)
#   description = "provide availability_zones for autscaling group"
# }

variable "desired_capacity" {
  type        = number
  description = "desired capicaty of instance"
}

variable "max_size" {
  type        = number
  description = "max capicaty of instance"
}

variable "min_size" {
  type        = number
  description = "min capicaty of instance"
}

variable "key_name" {
  type = string
  description = "specify the key pair name of ec2 instance"
}