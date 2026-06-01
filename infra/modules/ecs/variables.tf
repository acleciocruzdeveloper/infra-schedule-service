variable "cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
}

variable "kms_key_id" {
  description = "The KMS key ID for encrypting the execute command logs."
  type        = string
}

variable "cloud_watch_log_group_name" {
  description = "The name of the CloudWatch log group for execute command logs."
  type        = string
}

variable "kms_key_description" {
  description = "The description of the KMS key for encrypting the execute command logs."
  type        = string
}

variable "kms_key_deletion_window_in_days" {
  description = "The deletion window in days for the KMS key."
  type        = number
}