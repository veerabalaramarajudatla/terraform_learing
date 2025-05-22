terraform {
  backend "s3" {
    bucket         = "myterraformstatefileforthedemopurpose"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"  # Adjust if necessary
    dynamodb_table = "terraformbasedlockfileformyunderstanding"
    encrypt        = true
  }
}

provider "aws" {
  region     = var.region
}