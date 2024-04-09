# Instructions
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.37.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="s3_bucket"></a> [s3](#module\_s3) | terraform-aws-modules/s3-bucket/aws | v4.1.1 |
| <a name="ec2_instance"></a> [ec2](#module\_ec2) | terraform-aws-modules/ec2-instance/aws | v5.6.0 |


## Resources

| Name | Type |
|------|------|
| [aws_ecr_repository](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository) | resource |
| [aws_ecr_lifecycle_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy) | resource |
| [aws_key_pair](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="ecr_name"></a> [ecr\_name](#input\_ecr\_name) | n/a | `string` | n/a | yes |
| <a name="s3_name"></a> [s3\_name](#input\_s3\_name) | n/a | `string` | n/a | yes |
| <a name="key_name"></a> [key_name\_name](#input\_key_name\_name) | n/a | `string` | n/a | yes |
| <a name="public_key"></a> [ssh_key\_name](#input\_public_key\_name) | n/a | `string` | n/a | yes |
| <a name="ec2_name"></a> [ec2_name\_name](#input\_ec2_name\_name) | n/a | `string` | n/a | yes |
| <a name="ec2_type"></a> [ec2_type\_name](#input\_ec2_type\_name) | n/a | `string` | n/a | yes |
| <a name="vpc_security_group_ids"></a> [vpc_security_group_ids\_name](#input\_vpc_security_group_ids\_name) | n/a | `list(string)` | n/a | yes |
| <a name="subnet_id"></a> [subnet_id\_name](#input\_subnet_id\_name) | n/a | `string` | n/a | yes |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_registry_id"></a> [registry\_id](#output\_registry\_id) | n/a |
| <a name="output_repository_url"></a> [repository\_url](#output\_repository\_url) | n/a |
| <a name="output_public_ip"></a> [public_ip\_url](#output\_repository\_url) | n/a |
