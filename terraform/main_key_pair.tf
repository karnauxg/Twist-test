resource "aws_key_pair" "deployer" {
  count      = var.create ? 1 : 0

  key_name   = var.key_name
  public_key = var.public_key
}