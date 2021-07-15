provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-anou"
    key    = "test/key"
    region = "us-west-1"
  }
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "es-test-bucket-12345"
  acl = "private"

  tags = {
    Name = "Test bucket"
  }
}
