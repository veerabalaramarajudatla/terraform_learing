terraform {
  backend "s3" {
    bucket         = "myterraformstatefileforthedemopurpose"
    key            = "terraform/state/terraform.tfstate"  # Path within the bucket
    region         = "us-east-1"  # Adjust if you're using a different region
    dynamodb_table = "terraformbasedlockfileformyunderstanding"
    encrypt        = true
  }
}