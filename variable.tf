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

variable "instance_name" {
  description = "The name tag to assign to the EC2 instance"
  type        = string
}