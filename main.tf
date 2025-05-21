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

resource "aws_ec2_instance" "instance_details" {
    name = var.instance_name
    ami = var.ami_id
    instance_type = var.instance_typ
}