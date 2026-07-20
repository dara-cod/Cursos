data "aws_caller_identity" "current" {}

output "resource_name" {
  value = aws_s3_bucket.this.bucket
}

output "resource_arn" {
  value = aws_s3_bucket.this.arn
}

output "aws_account" {
  value = data.aws_caller_identity.current.account_id
}

output "region" {
  value = var.region
}

output "workspace" {
  value = terraform.workspace
}