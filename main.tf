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
  lifecycle {
    prevent_destroy = true
    ignore_changes = [bucket]
  }
}

resource "aws_instance" "instance_details" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
  lifecycle {
    prevent_destroy = true
    ignore_changes = [bucket]
  }
}