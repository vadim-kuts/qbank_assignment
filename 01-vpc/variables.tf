variable "region" {
  description = "Region code"
  type        = string
  default     = "eu-west-1"
}

variable "account_id" {
  description = "Account Id"
  type        = string
  default     = "123456789012"
}

# VPC variables
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR range"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "List of AZs"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b"]
}

variable "vpc_public_subnets" {
  description = "public subnets"
  type        = list(string)
  default     = ["10.0.11.0/24", "10.0.12.0/24"]
}

variable "vpc_private_subnets" {
  description = "private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_rdsdb_subnets" {
  description = "rds subnet CIDR ranges"
  type        = list(string)
  default     = ["10.0.21.0/24", "10.0.22.0/24"]
}

variable "vpc_tags" {
  description = "optional VPC tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}
