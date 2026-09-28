output "dev_server_instance_id" {
  description = "Terraform-created EC2 instance ID"
  value       = module.dev_server.instance_id
}

output "dev_server_public_ip" {
  description = "Terraform-created EC2 public IP"
  value       = module.dev_server.public_ip
}
