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

# ASG Frontend variables

variable "frontend_asg_sg_name" {
  description = "Name of the autoscaling group security group"
  type        = string
  default     = "asg"
}

variable "frontend_asg_sg_description" {
  description = "Description of the autoscaling group security group"
  type        = string
  default     = "asg-sg"
}

variable "frontend_asg_sg_tags" {
  description = "Tags for autoscaling group security group"
  type        = map(string)
  default     = { "Name" = "", "created-by" = "terraform" }
}

variable "frontend_asg_name" {
  description = "Name of the autoscaling group"
  type        = string
  default     = "asg"
}

variable "frontend_asg_min_size" {
  description = "Auto scaling minimum size"
  type        = number
  default     = 0
}

variable "frontend_asg_max_size" {
  description = "Auto scaling maximum size"
  type        = number
  default     = 1
}

variable "frontend_asg_desired_capacity" {
  description = "Auto scaling desired capacity"
  type        = number
  default     = 1
}

variable "frontend_asg_wait_for_capacity_timeout" {
  description = "Auto scaling wait for capacity timeout"
  type        = number
  default     = 0
}

variable "frontend_asg_health_check_type" {
  description = "ASG health check type"
  type        = string
  default     = "EC2"
}

variable "frontend_asg_launch_template_name" {
  description = "Name of launch template"
  type        = string
  default     = "asg-lt"
}

variable "frontend_asg_launch_template_description" {
  description = "autoscaling group security group"
  type        = string
  default     = "asg-lt"
}

variable "frontend_asg_update_default_version" {
  description = "ASG update default version"
  type        = bool
  default     = true
}

variable "frontend_asg_image_id" {
  description = "ASG image id"
  type        = string
  default     = "ami-08541bb85074a743a"
}

variable "frontend_asg_instance_type" {
  description = "Auto scaling group instance type"
  type        = string
  default     = "t3.micro"
}

variable "frontend_asg_ebs_optimized" {
  description = "ASG ebs optimized"
  type        = bool
  default     = true
}

variable "frontend_asg_enable_monitoring" {
  description = "ASG enable monitoring"
  type        = bool
  default     = false
}

variable "frontend_asg_create_iam_instance_profile" {
  description = "ASG create iam instance profile"
  type        = bool
  default     = true
}

variable "frontend_asg_iam_role_name" {
  description = "ASG iam role name"
  type        = string
  default     = "asg-iam-role"
}

variable "frontend_asg_iam_role_path" {
  description = "ASG iam role path"
  type        = string
  default     = "/ec2/"
}

variable "frontend_asg_iam_role_description" {
  description = "ASG iam role description"
  type        = string
  default     = "asg-iam-role"
}

variable "frontend_asg_iam_role_tags" {
  description = "ASG iam role tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "frontend_asg_block_device_mappings_volume_size_0" {
  description = "ASG block device mapping volume size 0"
  type        = number
  default     = 20
}

variable "frontend_asg_block_device_mappings_volume_size_1" {
  description = "ASG block device mapping volume size 1"
  type        = number
  default     = 30
}

variable "frontend_asg_instance_tags" {
  description = "ASG instance tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "frontend_asg_volume_tags" {
  description = "Auto scaling group volume tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "frontend_asg_tags" {
  description = "Auto scaling group tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "frontend_iam_policy" {
  description = "Name of the frontend IAM policy"
  type        = string
  default     = "frontend-iam"
}

variable "frontend_iam_policy_tags" {
  description = "Frontend IAM policy tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

# ASG Backend variables

variable "backend_asg_sg_name" {
  description = "Name of the autoscaling group security group"
  type        = string
  default     = "asg"
}

variable "backend_asg_sg_description" {
  description = "Description of the autoscaling group security group"
  type        = string
  default     = "asg-sg"
}

variable "backend_asg_sg_tags" {
  description = "Tags for autoscaling group security group"
  type        = map(string)
  default     = { "Name" = "", "created-by" = "terraform" }
}

variable "backend_asg_name" {
  description = "Name of the autoscaling group"
  type        = string
  default     = "asg"
}

variable "backend_asg_min_size" {
  description = "Auto scaling minimum size"
  type        = number
  default     = 0
}

variable "backend_asg_max_size" {
  description = "Auto scaling maximum size"
  type        = number
  default     = 1
}

variable "backend_asg_desired_capacity" {
  description = "Auto scaling desired capacity"
  type        = number
  default     = 1
}

variable "backend_asg_wait_for_capacity_timeout" {
  description = "Auto scaling wait for capacity timeout"
  type        = number
  default     = 0
}

variable "backend_asg_health_check_type" {
  description = "ASG health check type"
  type        = string
  default     = "EC2"
}

variable "backend_asg_launch_template_name" {
  description = "Name of launch template"
  type        = string
  default     = "asg-lt"
}

variable "backend_asg_launch_template_description" {
  description = "autoscaling group security group"
  type        = string
  default     = "asg-lt"
}

variable "backend_asg_update_default_version" {
  description = "ASG update default version"
  type        = bool
  default     = true
}

variable "backend_asg_image_id" {
  description = "ASG image id"
  type        = string
  default     = "ami-08541bb85074a743a"
}

variable "backend_asg_instance_type" {
  description = "Auto scaling group instance type"
  type        = string
  default     = "t3.micro"
}

variable "backend_asg_ebs_optimized" {
  description = "ASG ebs optimized"
  type        = bool
  default     = true
}

variable "backend_asg_enable_monitoring" {
  description = "ASG enable monitoring"
  type        = bool
  default     = false
}

variable "backend_asg_create_iam_instance_profile" {
  description = "ASG create iam instance profile"
  type        = bool
  default     = true
}

variable "backend_asg_iam_role_name" {
  description = "ASG iam role name"
  type        = string
  default     = "asg-iam-role"
}

variable "backend_asg_iam_role_path" {
  description = "ASG iam role path"
  type        = string
  default     = "/ec2/"
}

variable "backend_asg_iam_role_description" {
  description = "ASG iam role description"
  type        = string
  default     = "asg-iam-role"
}

variable "backend_asg_iam_role_tags" {
  description = "ASG iam role tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "backend_asg_block_device_mappings_volume_size_0" {
  description = "ASG block device mapping volume size 0"
  type        = number
  default     = 20
}

variable "backend_asg_block_device_mappings_volume_size_1" {
  description = "ASG block device mapping volume size 1"
  type        = number
  default     = 30
}

variable "backend_asg_instance_tags" {
  description = "ASG instance tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "backend_asg_volume_tags" {
  description = "Auto scaling group volume tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "backend_asg_tags" {
  description = "Auto scaling group tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "backend_iam_policy" {
  description = "Name of the backend IAM policy"
  type        = string
  default     = "backend-iam"
}

variable "backend_iam_policy_tags" {
  description = "backend IAM policy tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}
