terraform {
  required_version = ">= 0.12, < 0.13"
}

provider "aws" {
  region     = "eu-west-1"
}

resource "aws_s3_bucket" "test-bucket-chg" {
  bucket = "super-bucket-test-cicd"
  acl    = "private"
  region = "eu-west-1"

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
    Name        = "super-bucket-test-cicd"
  }
}
