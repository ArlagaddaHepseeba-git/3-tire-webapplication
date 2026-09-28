variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "name" {
  description = "EC2 instance name"
  type        = string
}
variable "security_group_ids" {
  description = "Security group IDs for the EC2 instance"
  type        = list(string)
  default     = []
}
