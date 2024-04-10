module "ec2_instance" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "v5.6.0"

  ami                    = var.ec2_ami
  name                   = var.ec2_name
  instance_type          = var.ec2_type
  key_name               = var.key_name
  vpc_security_group_ids = var.vpc_security_group_ids
  subnet_id              = var.subnet_id

}