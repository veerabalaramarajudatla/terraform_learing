output "bucket" {
  description = "The public IP address of the EC2 instance"
  value       = aws_s3_bucket.bucket
}