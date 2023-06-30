
terraform {
  required_version = ">= 1.5.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.6.0"
    }
  }
}


provider "aws" {
  # Configuration options
  profile = "tf"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "my_test_bucket" {
  bucket = "my-tf-test-bucket-00000031290312934124"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
