output "ecs_security_group_id" {
  value = aws_security_group.ecs_security_group.id
}

output "ecs_security_group_name" {
  value = aws_security_group.ecs_security_group.name
}