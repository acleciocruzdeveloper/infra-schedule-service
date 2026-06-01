output "aws_ecs_cluster_name" {
  value       = aws_ecs_cluster.this.name
  description = "Nome do cluster do ECS para exportar para outros módulos."
}

output "aws_cloudwatch_log_group_name" {
  value       = aws_cloudwatch_log_group.cloudwatch_log_group.name
  description = "Nome do log group do cloudwatch para exportar para outros módulos."
}

output "aws_kms_key_id" {
  value       = aws_kms_key.kms_key.id
  description = "Id do kms-key para exportar para outros módulos."
}