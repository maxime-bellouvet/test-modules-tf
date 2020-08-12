# infrastructure-modules/app/main.tf
terraform {
  required_version = ">= 0.12, < 0.13"
}

resource "aws_s3_bucket" "cicd-test-terraform" {
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
