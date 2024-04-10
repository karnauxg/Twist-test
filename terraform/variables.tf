variable "create" {
  description = "Determines whether resources will be created (affects all resources)"
  type        = bool
  default     = false
}

variable "region" {
  type        = string
  default     = "us-east-1"
}

variable "ecr_name" {
  type        = string
  default     = "twist_ecr"
}

variable "s3_name" {
  type        = string
  default     = "twists3"
}

variable "key_name" {
  type        = string
  # default     = null
  default     = "mev-cl"
}

variable "public_key" {
  type        = string
  default     = ""
}

variable "ec2_ami" {
  type        = string
  default     = "ami-080e1f13689e07408"
}

variable "ec2_name" {
  type        = string
  default     = "twist_ec2"
}

variable "ec2_type" {
  type        = string
  default     = "t2.micro"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  default     = [ "sg-23dfc946" ]
}

variable "subnet_id" {
  type        = string
  default     = "subnet-89a737b3"
}