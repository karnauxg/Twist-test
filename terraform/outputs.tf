output "registry_id" {
  value = aws_ecr_repository.twist_ecr.registry_id
}

output "repository_url" {
  value = aws_ecr_repository.twist_ecr.repository_url
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}