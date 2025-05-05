output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "public_instance_ip" {
  description = "Public IP of the public EC2 instance"
  value       = module.ec2.public_instance_ip
}

output "private_instance_ip" {
  description = "Private IP of the private EC2 instance"
  value       = module.ec2.private_instance_ip
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnet_ids
}
