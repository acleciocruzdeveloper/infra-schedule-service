# Variavel de configuração do ambiente (dev, staging, prod)
variable "environment" {
  description = "The environment to deploy to"
  type        = string
  validation {
    condition     = contains(["dev", "release", "prod"], var.environment)
    error_message = "The environment must be one of 'dev', 'release', or 'prod'."
  }
}

# Variaveis de configuração do módulo de VPC
variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

# Variaveis de configuração do módulo de security group
variable "security_group_description" {
  description = "The description of the security group"
  type        = string
}

variable "ingress_from_port" {
  description = "The port to allow ingress from"
  type        = number
}

variable "ingress_to_port" {
  description = "The port to allow ingress to"
  type        = number
}

variable "ingress_protocol" {
  description = "The protocol to allow ingress on"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "The CIDR blocks to allow ingress from"
  type        = list(string)
}

variable "egress_from_port" {
  description = "The port to allow egress from"
  type        = number
}

variable "egress_to_port" {
  description = "The port to allow egress to"
  type        = number
}

variable "egress_protocol" {
  description = "The protocol to allow egress on"
  type        = string
}

variable "egress_cidr_blocks" {
  description = "The CIDR blocks to allow egress from"
  type        = list(string)
}
