variable "env" {
  description = "Environment (dev/prod)"
  type        = string
  default     = "dev" 
}

variable "app_name" {
  description = "Application name"
  type        = string
  default     = "casino-app"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}