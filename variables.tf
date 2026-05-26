variable "requires_compatibilities" {
  description = "Launch type compatibility (FARGATE, EC2)"
  type        = list(string)
  default     = ["FARGATE"]
}

variable "network_mode" {
  description = "Network mode (awsvpc, bridge, host, none)"
  type        = string
  default     = "awsvpc"
}

variable "cpu" {
  description = "CPU units for the task (Fargate: 256, 512, 1024, 2048, 4096)"
  type        = string
  default     = "256"
}

variable "memory" {
  description = "Memory in MiB for the task"
  type        = string
  default     = "512"
}

variable "execution_role_arn" {
  description = "ARN of the task execution role"
  type        = string
  default     = null
}

variable "task_role_arn" {
  description = "ARN of the task role"
  type        = string
  default     = null
}

variable "container_definitions" {
  description = "JSON-encoded container definitions"
  type        = string
  validation {
    condition     = can(jsondecode(var.container_definitions))
    error_message = "container_definitions must be valid JSON."
  }
}

variable "runtime_platform" {
  description = "Runtime platform configuration"
  type = object({
    operating_system_family = string
    cpu_architecture        = string
  })
  default = null
}
