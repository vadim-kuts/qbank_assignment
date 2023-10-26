#asg outputs

output "frontend_asg_launch_template_id" {
  description = "The ID of the launch template"
  value       = module.frontend_asg.launch_template_id
}

output "frontend_asg_launch_template_arn" {
  description = "The ARN of the launch template"
  value       = module.frontend_asg.launch_template_arn
}

output "frontend_asg_launch_template_name" {
  description = "The name of the launch template"
  value       = module.frontend_asg.launch_template_name
}

output "frontend_asg_launch_template_latest_version" {
  description = "The latest version of the launch template"
  value       = module.frontend_asg.launch_template_latest_version
}

output "frontend_asg_launch_template_default_version" {
  description = "The default version of the launch template"
  value       = module.frontend_asg.launch_template_default_version
}

output "frontend_asg_autoscaling_group_id" {
  description = "The autoscaling group id"
  value       = module.frontend_asg.autoscaling_group_id
}

output "frontend_asg_autoscaling_group_name" {
  description = "The autoscaling group name"
  value       = module.frontend_asg.autoscaling_group_name
}

output "frontend_asg_autoscaling_group_arn" {
  description = "The ARN for this AutoScaling Group"
  value       = module.frontend_asg.autoscaling_group_arn
}

output "frontend_asg_autoscaling_group_min_size" {
  description = "The minimum size of the autoscale group"
  value       = module.frontend_asg.autoscaling_group_min_size
}

output "frontend_asg_autoscaling_group_max_size" {
  description = "The maximum size of the autoscale group"
  value       = module.frontend_asg.autoscaling_group_max_size
}

output "frontend_asg_autoscaling_group_desired_capacity" {
  description = "The number of Amazon EC2 instances that should be running in the group"
  value       = module.frontend_asg.autoscaling_group_desired_capacity
}

output "frontend_asg_autoscaling_group_default_cooldown" {
  description = "Time between a scaling activity and the succeeding scaling activity"
  value       = module.frontend_asg.autoscaling_group_default_cooldown
}

output "frontend_asg_autoscaling_group_health_check_grace_period" {
  description = "Time after instance comes into service before checking health"
  value       = module.frontend_asg.autoscaling_group_health_check_grace_period
}

output "frontend_asg_autoscaling_group_health_check_type" {
  description = "EC2 or ELB. Controls how health checking is done"
  value       = module.frontend_asg.autoscaling_group_health_check_type
}

output "frontend_asg_autoscaling_group_availability_zones" {
  description = "The availability zones of the autoscale group"
  value       = module.frontend_asg.autoscaling_group_availability_zones
}

output "frontend_asg_autoscaling_group_vpc_zone_identifier" {
  description = "The VPC zone identifier"
  value       = module.frontend_asg.autoscaling_group_vpc_zone_identifier
}

output "frontend_asg_autoscaling_group_load_balancers" {
  description = "The load balancer names associated with the autoscaling group"
  value       = module.frontend_asg.autoscaling_group_load_balancers
}

output "frontend_asg_autoscaling_group_target_group_arns" {
  description = "List of Target Group ARNs that apply to this AutoScaling Group"
  value       = module.frontend_asg.autoscaling_group_target_group_arns
}

output "frontend_asg_autoscaling_schedule_arns" {
  description = "ARNs of autoscaling group schedules"
  value       = module.frontend_asg.autoscaling_schedule_arns
}

output "frontend_asg_autoscaling_policy_arns" {
  description = "ARNs of autoscaling policies"
  value       = module.frontend_asg.autoscaling_policy_arns
}

output "frontend_asg_autoscaling_group_enabled_metrics" {
  description = "List of metrics enabled for collection"
  value       = module.frontend_asg.autoscaling_group_enabled_metrics
}

output "frontend_asg_iam_role_name" {
  description = "The name of the IAM role"
  value       = module.frontend_asg.iam_role_name
}

output "frontend_asg_iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role"
  value       = module.frontend_asg.iam_role_arn
}

output "frontend_asg_iam_role_unique_id" {
  description = "Stable and unique string identifying the IAM role"
  value       = module.frontend_asg.iam_role_unique_id
}

output "frontend_asg_iam_instance_profile_arn" {
  description = "ARN assigned by AWS to the instance profile"
  value       = module.frontend_asg.iam_instance_profile_arn
}

output "frontend_asg_iam_instance_profile_id" {
  description = "Instance profile's ID"
  value       = module.frontend_asg.iam_instance_profile_id
}

output "frontend_asg_iam_instance_profile_unique" {
  description = "Stable and unique string identifying the IAM instance profile"
  value       = module.frontend_asg.iam_instance_profile_unique
}

#launch template

output "frontend_launch_template_only_launch_template_id" {
  description = "The ID of the launch template"
  value       = module.frontend_asg.launch_template_id
}

output "frontend_launch_template_only_launch_template_arn" {
  description = "The ARN of the launch template"
  value       = module.frontend_asg.launch_template_arn
}

output "frontend_launch_template_only_launch_template_name" {
  description = "The name of the launch template"
  value       = module.frontend_asg.launch_template_name
}

output "frontend_launch_template_only_launch_template_latest_version" {
  description = "The latest version of the launch template"
  value       = module.frontend_asg.launch_template_latest_version
}

output "frontend_launch_template_only_launch_template_default_version" {
  description = "The default version of the launch template"
  value       = module.frontend_asg.launch_template_default_version
}

#asg outputs

output "backend_asg_launch_template_id" {
  description = "The ID of the launch template"
  value       = module.backend_asg.launch_template_id
}

output "backend_asg_launch_template_arn" {
  description = "The ARN of the launch template"
  value       = module.backend_asg.launch_template_arn
}

output "backend_asg_launch_template_name" {
  description = "The name of the launch template"
  value       = module.backend_asg.launch_template_name
}

output "backend_asg_launch_template_latest_version" {
  description = "The latest version of the launch template"
  value       = module.backend_asg.launch_template_latest_version
}

output "backend_asg_launch_template_default_version" {
  description = "The default version of the launch template"
  value       = module.backend_asg.launch_template_default_version
}

output "backend_asg_autoscaling_group_id" {
  description = "The autoscaling group id"
  value       = module.backend_asg.autoscaling_group_id
}

output "backend_asg_autoscaling_group_name" {
  description = "The autoscaling group name"
  value       = module.backend_asg.autoscaling_group_name
}

output "backend_asg_autoscaling_group_arn" {
  description = "The ARN for this AutoScaling Group"
  value       = module.backend_asg.autoscaling_group_arn
}

output "backend_asg_autoscaling_group_min_size" {
  description = "The minimum size of the autoscale group"
  value       = module.backend_asg.autoscaling_group_min_size
}

output "backend_asg_autoscaling_group_max_size" {
  description = "The maximum size of the autoscale group"
  value       = module.backend_asg.autoscaling_group_max_size
}

output "backend_asg_autoscaling_group_desired_capacity" {
  description = "The number of Amazon EC2 instances that should be running in the group"
  value       = module.backend_asg.autoscaling_group_desired_capacity
}

output "backend_asg_autoscaling_group_default_cooldown" {
  description = "Time between a scaling activity and the succeeding scaling activity"
  value       = module.backend_asg.autoscaling_group_default_cooldown
}

output "backend_asg_autoscaling_group_health_check_grace_period" {
  description = "Time after instance comes into service before checking health"
  value       = module.backend_asg.autoscaling_group_health_check_grace_period
}

output "backend_asg_autoscaling_group_health_check_type" {
  description = "EC2 or ELB. Controls how health checking is done"
  value       = module.backend_asg.autoscaling_group_health_check_type
}

output "backend_asg_autoscaling_group_availability_zones" {
  description = "The availability zones of the autoscale group"
  value       = module.backend_asg.autoscaling_group_availability_zones
}

output "backend_asg_autoscaling_group_vpc_zone_identifier" {
  description = "The VPC zone identifier"
  value       = module.backend_asg.autoscaling_group_vpc_zone_identifier
}

output "backend_asg_autoscaling_group_load_balancers" {
  description = "The load balancer names associated with the autoscaling group"
  value       = module.backend_asg.autoscaling_group_load_balancers
}

output "backend_asg_autoscaling_group_target_group_arns" {
  description = "List of Target Group ARNs that apply to this AutoScaling Group"
  value       = module.backend_asg.autoscaling_group_target_group_arns
}

output "backend_asg_autoscaling_schedule_arns" {
  description = "ARNs of autoscaling group schedules"
  value       = module.backend_asg.autoscaling_schedule_arns
}

output "backend_asg_autoscaling_policy_arns" {
  description = "ARNs of autoscaling policies"
  value       = module.backend_asg.autoscaling_policy_arns
}

output "backend_asg_autoscaling_group_enabled_metrics" {
  description = "List of metrics enabled for collection"
  value       = module.backend_asg.autoscaling_group_enabled_metrics
}

output "backend_asg_iam_role_name" {
  description = "The name of the IAM role"
  value       = module.backend_asg.iam_role_name
}

output "backend_asg_iam_role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the IAM role"
  value       = module.backend_asg.iam_role_arn
}

output "backend_asg_iam_role_unique_id" {
  description = "Stable and unique string identifying the IAM role"
  value       = module.backend_asg.iam_role_unique_id
}

output "backend_asg_iam_instance_profile_arn" {
  description = "ARN assigned by AWS to the instance profile"
  value       = module.backend_asg.iam_instance_profile_arn
}

output "backend_asg_iam_instance_profile_id" {
  description = "Instance profile's ID"
  value       = module.backend_asg.iam_instance_profile_id
}

output "backend_asg_iam_instance_profile_unique" {
  description = "Stable and unique string identifying the IAM instance profile"
  value       = module.backend_asg.iam_instance_profile_unique
}

#launch template

output "backend_launch_template_only_launch_template_id" {
  description = "The ID of the launch template"
  value       = module.backend_asg.launch_template_id
}

output "backend_launch_template_only_launch_template_arn" {
  description = "The ARN of the launch template"
  value       = module.backend_asg.launch_template_arn
}

output "backend_launch_template_only_launch_template_name" {
  description = "The name of the launch template"
  value       = module.backend_asg.launch_template_name
}

output "backend_launch_template_only_launch_template_latest_version" {
  description = "The latest version of the launch template"
  value       = module.backend_asg.launch_template_latest_version
}

output "backend_launch_template_only_launch_template_default_version" {
  description = "The default version of the launch template"
  value       = module.backend_asg.launch_template_default_version
}

# asg & sg outputs


output "frontend_security_group_id" {
  description = "The ID of the security group"
  value       = module.frontend_asg_sg.security_group_id
}

output "frontend_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.frontend_asg_sg.security_group_vpc_id
}

output "frontend_security_group_owner_id" {
  description = "The owner ID"
  value       = module.frontend_asg_sg.security_group_owner_id
}

output "frontend_security_group_name" {
  description = "The name of the security group"
  value       = module.frontend_asg_sg.security_group_name
}

output "frontend_security_group_description" {
  description = "The description of the security group"
  value       = module.frontend_asg_sg.security_group_description
}

# asg & sg outputs


output "backend_security_group_id" {
  description = "The ID of the security group"
  value       = module.bakcend_asg_sg.security_group_id
}

output "backend_security_group_vpc_id" {
  description = "The VPC ID"
  value       = module.bakcend_asg_sg.security_group_vpc_id
}

output "backend_security_group_owner_id" {
  description = "The owner ID"
  value       = module.bakcend_asg_sg.security_group_owner_id
}

output "backend_security_group_name" {
  description = "The name of the security group"
  value       = module.bakcend_asg_sg.security_group_name
}

output "backend_security_group_description" {
  description = "The description of the security group"
  value       = module.bakcend_asg_sg.security_group_description
}
