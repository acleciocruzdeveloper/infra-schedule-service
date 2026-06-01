environment = "dev"
vpc_cidr    = "10.0.0.0/16"

# Security group rules
security_group_description = "Security group for development environment"
ingress_from_port          = 8080
ingress_to_port            = 8080
ingress_protocol           = "tcp"
ingress_cidr_blocks        = ["10.0.0.0/16"]
egress_from_port           = 0
egress_to_port             = 0
egress_protocol            = "all"
egress_cidr_blocks         = ["0.0.0.0/0"]