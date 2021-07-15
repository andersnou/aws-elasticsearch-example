provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = format("es-test-bucket-%s", random_pet.prefix.id)
  acl = "private"

  tags = {
    Name = "Test bucket"
  }
}

resource "random_pet" "prefix" {}