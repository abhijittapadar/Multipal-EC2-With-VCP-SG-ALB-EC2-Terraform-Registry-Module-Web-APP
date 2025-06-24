module "sg-alb" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"
  name = "ALB-SG"
  vpc_id = module.vpc.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules  = ["http-80-tcp"]
  egress_rules = ["all-all"]
  
}