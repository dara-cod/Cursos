terraform {

  required_version = ">= 1.9.0"

  required_providers {

    aws = {

      source = "hashicorp/aws"

      version = "~> 5.0"

    }

  }

}

provider "aws" {

  region = var.region

}

resource "aws_s3_bucket" "this" {

  bucket = var.bucket_name

}

output "bucket_name" {

  value = aws_s3_bucket.this.bucket

}