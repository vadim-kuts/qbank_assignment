# Generic variables
region = "eu-west-1"

# ASG variables
frontend_asg_sg_name                             = "stg-frontend-asg-sg"
frontend_asg_sg_description                      = "stg-frontend-asg-sg"
frontend_asg_sg_tags                             = { "Name" = "stg-frontend-asg", "created-by" = "terraform" }
frontend_asg_name                                = "stg-frontend-asg"
frontend_asg_min_size                            = 1
frontend_asg_max_size                            = 2
frontend_asg_desired_capacity                    = 1
frontend_asg_wait_for_capacity_timeout           = 0
frontend_asg_health_check_type                   = "EC2"
frontend_asg_launch_template_name                = "stg-frontend-lt"
frontend_asg_launch_template_description         = "stg-frontend-lt"
frontend_asg_update_default_version              = true
frontend_asg_image_id                            = "ami-08541bb85074a743a"
frontend_asg_instance_type                       = "t3.micro"
frontend_asg_ebs_optimized                       = true
frontend_asg_enable_monitoring                   = true
frontend_asg_create_iam_instance_profile         = true
frontend_asg_iam_role_name                       = "stg-frontend-asg-iam-role"
frontend_asg_iam_role_path                       = "/ec2/"
frontend_asg_iam_role_description                = "stg-frontend-asg-iam-role"
frontend_asg_iam_role_tags                       = { "Name" = "stg-frontend-asg-iam-role", "created-by" = "terraform" }
frontend_asg_block_device_mappings_volume_size_0 = 5
frontend_asg_block_device_mappings_volume_size_1 = 10
frontend_asg_instance_tags                       = { "Name" = "stg-frontend-instance", "created-by" = "terraform" }
frontend_asg_volume_tags                         = { "Name" = "stg-frontend-volume", "created-by" = "terraform" }
frontend_asg_tags                                = { "Name" = "stg-frontend-asg", "created-by" = "terraform" }

backend_asg_sg_name                             = "stg-backend-asg-sg"
backend_asg_sg_description                      = "stg-backend-asg-sg"
backend_asg_sg_tags                             = { "Name" = "stg-backend-asg", "created-by" = "terraform" }
backend_asg_name                                = "stg-backend-asg"
backend_asg_min_size                            = 1
backend_asg_max_size                            = 2
backend_asg_desired_capacity                    = 1
backend_asg_wait_for_capacity_timeout           = 0
backend_asg_health_check_type                   = "EC2"
backend_asg_launch_template_name                = "stg-backend-lt"
backend_asg_launch_template_description         = "stg-backend-lt"
backend_asg_update_default_version              = true
backend_asg_image_id                            = "ami-08541bb85074a743a"
backend_asg_instance_type                       = "t3.micro"
backend_asg_ebs_optimized                       = true
backend_asg_enable_monitoring                   = true
backend_asg_create_iam_instance_profile         = true
backend_asg_iam_role_name                       = "stg-backend-asg-iam-role"
backend_asg_iam_role_path                       = "/ec2/"
backend_asg_iam_role_description                = "stg-backend-asg-iam-role"
backend_asg_iam_role_tags                       = { "Name" = "stg-backend-asg-iam-role", "created-by" = "terraform" }
backend_asg_block_device_mappings_volume_size_0 = 5
backend_asg_block_device_mappings_volume_size_1 = 10
backend_asg_instance_tags                       = { "Name" = "stg-backend-instance", "created-by" = "terraform" }
backend_asg_volume_tags                         = { "Name" = "stg-backend-volume", "created-by" = "terraform" }
backend_asg_tags                                = { "Name" = "stg-backend-asg", "created-by" = "terraform" }
