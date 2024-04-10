resource "aws_ecr_repository" "twist_ecr" {
  name       = var.ecr_name
}

resource "aws_ecr_lifecycle_policy" "twist_ecr_lifecycle" {
  repository = aws_ecr_repository.twist_ecr.name

  policy = <<EOF
{
    "rules": [
        {
            "rulePriority": 1,
            "description": "Keep last 90 days",
            "selection": {
                "tagStatus": "tagged",
                "tagPrefixList": ["v"],
                "countType": "imageCountMoreThan",
                "countNumber": 90
            },
            "action": {
                "type": "expire"
            }
        }
    ]
}
EOF
}