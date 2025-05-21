terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.3.0"
    }
  }
  required_version = ">= 1.0"
}

provider "aws" {
  region     = var.region
}

resource "aws_s3_bucket" "bucket_details" {
  bucket = var.bucket_name
}