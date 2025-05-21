variable "region" {
  type        = string
  description = "AWS region"
}

variable "bucket_name" {
  type        = string
  description = "S3 Bucket name"
}

variable "access_key" {
  type        = string
  description = "AWS Access Key"
  sensitive   = true
}

variable "secret_key" {
  type        = string
  description = "AWS Secret Key"
  sensitive   = true
}
