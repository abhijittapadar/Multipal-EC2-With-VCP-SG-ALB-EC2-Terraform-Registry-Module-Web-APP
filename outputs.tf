output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}
output "security_group_id" {
  description = "The ID of the security group"
  value       = module.sg-public.security_group_id
}
output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

output "alb_security_group_id" {
  description = "The ID of the security group"
  value       = module.sg-alb.security_group_id
}

output "details_public_instance" {
  value = {for k, v in module.ec2-instance : k => v}
}