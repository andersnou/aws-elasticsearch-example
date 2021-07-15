provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "es-test-bucket-12345"
  acl = "private"

  tags = {
    Name = "Test bucket"
  }
}
