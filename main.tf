terraform {
  backend "s3" {
    bucket         = "myterraformstatefilefromgithubactions"
    key            = "env/prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraformbasedlockfileformyunderstanding5"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.3.0"
    }
  }

  required_version = ">= 1.0"
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "bucket_details" {
  bucket = var.bucket_name
}

resource "aws_instance" "myec2instanceforcreation" {
  ami           = "ami-06031e2c49c278c8f"
  instance_type = "t2.nano"

  tags = {
    Name = "Terraform-EC2-pipelinebasedinst4"
  }
}