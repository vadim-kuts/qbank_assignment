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

# ALB variables
variable "frontend_alb_sg_name" {
  description = "ALB security group name"
  type        = string
  default     = "frontend_alb-sg"
}

variable "frontend_alb_sg_ingress_cidr_blocks" {
  description = "ALB cidr blocks"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "frontend_alb_sg_description" {
  description = "ALB security group description"
  type        = string
  default     = "frontend_alb-sg"
}

variable "frontend_alb_sg_tags" {
  description = "Application load balancer security group tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "frontend_alb_description" {
  description = "Application load balancer description"
  type        = string
  default     = "frontend_alb"
}

variable "frontend_alb_name" {
  description = "Application load balancer name"
  type        = string
  default     = "frontend_alb"
}

variable "frontend_alb_http_tcp_listeners_port" {
  description = "ALB http listeners port"
  type        = number
  default     = 80
}

variable "frontend_alb_target_group_name" {
  description = "ALB target group name"
  type        = string
  default     = "frontend_alb-tg"
}

variable "frontend_alb_target_groups_backend_port" {
  description = "frontend_alb http listeners port"
  type        = number
  default     = 80
}

variable "frontend_alb_tags" {
  description = "frontend_alb tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "backend_alb_sg_name" {
  description = "ALB security group name"
  type        = string
  default     = "backend_alb-sg"
}

variable "backend_alb_sg_ingress_cidr_blocks" {
  description = "ALB cidr blocks"
  type        = list(any)
  default     = ["0.0.0.0/0"]
}

variable "backend_alb_sg_description" {
  description = "ALB security group description"
  type        = string
  default     = "backend_alb-sg"
}

variable "backend_alb_sg_tags" {
  description = "Application load balancer security group tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "backend_alb_description" {
  description = "Application load balancer description"
  type        = string
  default     = "backend_alb"
}

variable "backend_alb_name" {
  description = "Application load balancer name"
  type        = string
  default     = "backend_alb"
}

variable "backend_alb_http_tcp_listeners_port" {
  description = "ALB http listeners port"
  type        = number
  default     = 80
}

variable "backend_alb_target_group_name" {
  description = "ALB target group name"
  type        = string
  default     = "backend_alb-tg"
}

variable "backend_alb_target_groups_backend_port" {
  description = "backend_alb http listeners port"
  type        = number
  default     = 80
}

variable "backend_alb_tags" {
  description = "backend_alb tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}
