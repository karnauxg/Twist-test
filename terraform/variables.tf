variable "create" {
  description = "Determines whether resources will be created (affects all resources)"
  type        = bool
  default     = true
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
  default     = "twist_s3"
}

variable "key_name" {
  type        = string
  default     = null
}

variable "public_key" {
  type        = string
  default     = ""
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
  default     = [ "value" ]
}

variable "subnet_id" {
  type        = string
  default     = "value"
}