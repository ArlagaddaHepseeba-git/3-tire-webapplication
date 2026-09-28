output "dev_server_instance_id" {
  description = "Terraform-created EC2 instance ID"
  value       = module.dev_server.instance_id
}

output "dev_server_public_ip" {
  description = "Terraform-created EC2 public IP"
  value       = module.dev_server.public_ip
}

output "backend_instance_id" {
  description = "Backend EC2 instance ID"
  value       = module.backend_server.instance_id
}

output "backend_public_ip" {
  description = "Backend EC2 public IP"
  value       = module.backend_server.public_ip
}

output "frontend_instance_id" {
  description = "Frontend EC2 instance ID"
  value       = module.frontend_server.instance_id
}

output "frontend_public_ip" {
  description = "Frontend EC2 public IP"
  value       = module.frontend_server.public_ip
}
