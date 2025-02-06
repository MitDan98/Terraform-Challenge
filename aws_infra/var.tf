variable "env" {
  description = "Environment (dev/prod)"
  type        = string
  default = "dev"
}


variable "region" {
  description = "AWS region"
  type        = string
  default = "us-east-1"
}