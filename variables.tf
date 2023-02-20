variable "region" {
  default = "us-west-2"
}

variable "cidr_block" {
  default = "10.0.0.0/16"
}

variable "aws_resource_prefix" {
  description = "Prefix to be used in the naming of some of the created AWS resources e.g. demo-webapp"
  default     = "test-webapp"
}

variable "environment" {
  description = "the name of your environment, e.g. \"prod\""
  default     = "production"
}

variable "private_subnets" {
  description = "List of private subnets"
  default     = ["10.0.100.0/24", "10.0.101.0/24"]
}

variable "public_subnets" {
  description = "List of public subnets"
  default     = ["10.0.200.0/24", "10.0.201.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  default     = ["us-west-2a", "us-west-2b"]
}

variable "container_port" {
  description = "The port where the Docker is exposed"
  default     = 80
}

variable "container_cpu" {
  description = "The number of cpu units used by the task"
  default     = 256
}

variable "container_memory" {
  description = "The amount (in MiB) of memory used by the task"
  default     = 512
}

variable "health_check_path" {
  description = "Http path for task health check"
  default     = "/"
}

variable "service_desired_count" {
  description = "Number of services running in parallel"
  default     = 2
}