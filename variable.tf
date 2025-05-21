variable "region" {
  type        = string
  description = "AWS region"
}

variable "bucket_name" {
  type        = string
  description = "S3 Bucket name"
}

variable "instance_name" {
    type = string
    description = "Instance Name"
}

variable "ami_id" {
    type = string
    description = "AMI details"
}