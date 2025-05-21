output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.instance_details.public_ip
}