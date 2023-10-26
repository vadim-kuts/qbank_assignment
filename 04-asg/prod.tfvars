# Generic variables
region = "eu-west-1"

# ASG variables
frontend_asg_sg_name                             = "prod-frontend-asg-sg"
frontend_asg_sg_description                      = "prod-frontend-asg-sg"
frontend_asg_sg_tags                             = { "Name" = "prod-frontend-asg", "created-by" = "terraform" }
frontend_asg_name                                = "prod-frontend-asg"
frontend_asg_min_size                            = 1
frontend_asg_max_size                            = 3
frontend_asg_desired_capacity                    = 2
frontend_asg_wait_for_capacity_timeout           = 0
frontend_asg_health_check_type                   = "EC2"
frontend_asg_launch_template_name                = "prod-frontend-lt"
frontend_asg_launch_template_description         = "prod-frontend-lt"
frontend_asg_update_default_version              = true
frontend_asg_image_id                            = "ami-08541bb85074a743a"
frontend_asg_instance_type                       = "t3.medium"
frontend_asg_ebs_optimized                       = true
frontend_asg_enable_monitoring                   = true
frontend_asg_create_iam_instance_profile         = true
frontend_asg_iam_role_name                       = "prod-frontend-asg-iam-role"
frontend_asg_iam_role_path                       = "/ec2/"
frontend_asg_iam_role_description                = "prod-frontend-asg-iam-role"
frontend_asg_iam_role_tags                       = { "Name" = "prod-frontend-asg-iam-role", "created-by" = "terraform" }
frontend_asg_block_device_mappings_volume_size_0 = 20
frontend_asg_block_device_mappings_volume_size_1 = 30
frontend_asg_instance_tags                       = { "Name" = "prod-frontend-instance", "created-by" = "terraform" }
frontend_asg_volume_tags                         = { "Name" = "prod-frontend-volume", "created-by" = "terraform" }
frontend_asg_tags                                = { "Name" = "prod-frontend-asg", "created-by" = "terraform" }

backend_asg_sg_name                             = "prod-backend-asg-sg"
backend_asg_sg_description                      = "prod-backend-asg-sg"
backend_asg_sg_tags                             = { "Name" = "prod-backend-asg", "created-by" = "terraform" }
backend_asg_name                                = "prod-backend-asg"
backend_asg_min_size                            = 1
backend_asg_max_size                            = 3
backend_asg_desired_capacity                    = 2
backend_asg_wait_for_capacity_timeout           = 0
backend_asg_health_check_type                   = "EC2"
backend_asg_launch_template_name                = "prod-backend-lt"
backend_asg_launch_template_description         = "prod-backend-lt"
backend_asg_update_default_version              = true
backend_asg_image_id                            = "ami-08541bb85074a743a"
backend_asg_instance_type                       = "t3.medium"
backend_asg_ebs_optimized                       = true
backend_asg_enable_monitoring                   = true
backend_asg_create_iam_instance_profile         = true
backend_asg_iam_role_name                       = "prod-backend-asg-iam-role"
backend_asg_iam_role_path                       = "/ec2/"
backend_asg_iam_role_description                = "prod-backend-asg-iam-role"
backend_asg_iam_role_tags                       = { "Name" = "prod-backend-asg-iam-role", "created-by" = "terraform" }
backend_asg_block_device_mappings_volume_size_0 = 20
backend_asg_block_device_mappings_volume_size_1 = 30
backend_asg_instance_tags                       = { "Name" = "prod-backend-instance", "created-by" = "terraform" }
backend_asg_volume_tags                         = { "Name" = "prod-backend-volume", "created-by" = "terraform" }
backend_asg_tags                                = { "Name" = "prod-backend-asg", "created-by" = "terraform" }
