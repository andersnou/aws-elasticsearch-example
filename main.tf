provider "aws" {
  region = var.region
}

# terraform {
#   backend "s3" {
#     bucket = "terraform-backend-bucket-anou"
#     key    = "test/key"
#     region = "eu-west-1"
#   }
# }

resource "aws_s3_bucket" "test_bucket" {
  bucket = "es-test-bucket-12345"
  acl = "private"

  tags = {
    Name = "Test bucket"
  }
}

# resource "aws_elasticsearch_domain" "elasticsearch" {
#   domain_name = "testing-elasticsearch"
#   elasticsearch_version = "7.10"

#   cluster_config {
#     instance_type = "t3.small.elasticsearch"
#   }

#   zone_awareness_enabled = false

#   ebs_options {
#     ebs_enabled = true
#     volume_size = 10
#     volume_type = "gp2"
#   }

#   tags = {
#     Domain = "TestDomain"
#   }
# }
