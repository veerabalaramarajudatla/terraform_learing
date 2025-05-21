variable "region" {
  type        = string
  description = "AWS region"
}

variable "bucket_name" {
  type        = string
  description = "S3 Bucket name"
}

variable "ami_id" {
    type = string
    description = "AMI details"
}