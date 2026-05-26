output "arn" {
  description = "Full ARN of the task definition (includes revision)"
  value       = try(aws_ecs_task_definition.this[0].arn, null)
}

output "arn_without_revision" {
  description = "ARN without revision"
  value       = try(aws_ecs_task_definition.this[0].arn_without_revision, null)
}

output "family" {
  description = "Family of the task definition"
  value       = try(aws_ecs_task_definition.this[0].family, null)
}

output "revision" {
  description = "Revision number"
  value       = try(aws_ecs_task_definition.this[0].revision, null)
}
