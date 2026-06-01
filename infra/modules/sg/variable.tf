variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  validation {
    condition = (
      length(var.security_group_name) <= 25
      &&
      can(regex("^[a-z-]+$", var.security_group_name))
    )
    error_message = <<EOT
    O nome do security group deve:
    - Possuir no máximo 25 caracteres
    - Conter apenas letras minúsculas e hífens (-)
    - Não conter números ou outros caracteres especiais
    - Não conter letras maiúsculas
    EOT
  }
}

variable "description" {
  description = "Description of the security group"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
}

variable "tags" {
  description = "Tags to apply to the security group"
  type        = map(string)
  default     = {}
}

variable "ingress_from_port" {
  description = "Starting port for ingress rules"
  type        = number
}

variable "ingress_to_port" {
  description = "Ending port for ingress rules"
  type        = number
}

variable "ingress_protocol" {
  description = "Protocol for ingress rules (e.g., tcp, udp, icmp)"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "CIDR blocks for ingress rules"
  type        = list(string)
}

variable "egress_from_port" {
  description = "Starting port for egress rules"
  type        = number
}

variable "egress_to_port" {
  description = "Ending port for egress rules"
  type        = number
}
variable "egress_protocol" {
  description = "Protocol for egress rules (e.g., tcp, udp, icmp)"
  type        = string
}

variable "egress_cidr_blocks" {
  description = "CIDR blocks for egress rules"
  type        = list(string)
}