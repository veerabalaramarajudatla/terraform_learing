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

resource "aws_instance" "myec2instnceforcreation" {
  ami           = "ami-0af9569868786b23a"
  instance_type = "t2.micro"
  tags = {
    Name = "Terraform-EC2-pipelinebasedins"
  }
}