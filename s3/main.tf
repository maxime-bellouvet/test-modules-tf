terraform {
  required_version = ">= 0.12, < 0.13"
  required_providers {
    aws = "~> 2.70.0"
  }
}

provider "aws" {
  region     = var.AWS_REGION
}

resource "aws_s3_bucket" "test-bucket-chg-new" {
  bucket = var.BUCKET_NAME
  acl    = "private"
  region = var.AWS_REGION
  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name        = var.BUCKET_NAME
  }
}
