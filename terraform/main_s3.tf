module "s3_bucket" {
  source                   = "terraform-aws-modules/s3-bucket/aws"
  version                  = "v4.1.0"

  bucket                   = var.s3_name
  acl                      = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }

}
