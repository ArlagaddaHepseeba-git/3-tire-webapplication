output "instance_id" {
  description = "Backend EC2 instance ID"
  value       = aws_instance.this.id
}

output "public_ip" {
  description = "Backend EC2 public IP"
  value       = aws_instance.this.public_ip
}
