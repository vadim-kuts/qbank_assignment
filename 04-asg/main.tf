data "tfe_outputs" "vpc" {
  organization = "qbank"
  workspace = "vpc"
}

data "tfe_outputs" "alb" {
  organization = "qbank"
  workspace = "alb"
}

data "tfe_outputs" "s3" {
  organization = "qbank"
  workspace = "s3"
}

locals {
  user_data = <<-EOT
    #!/bin/bash
    echo "Provisioning"
  EOT
}

data "aws_iam_policy_document" "frontend_policy" {
  statement {
    sid       = "ListObjectsInBucket"
    actions   = ["s3:ListBucket"]
    resources = [data.tfe_outputs.s3.s3_bucket_arn]
  },
  statement {
    sid       = "GetObjectAction"
    actions   = ["s3:GetObject"]
    resources = ["${data.tfe_outputs.s3.s3_bucket_arn}/*"]
  }
}

module "frontend_iam_policy" {
  source = "terraform-aws-modules/iam/aws//modules/iam-policy"

  name        = var.frontend_iam_policy
  path        = "/ec2/"

  policy = data.aws_iam_policy_document.frontend_policy.json

  tags = var.frontend_iam_policy_tags
}

module "frontend_asg_sg" {
  source  = "terraform-aws-modules/security-group/aws"

  name        = var.frontend_asg_sg_name
  description = var.frontend_asg_sg_description
  vpc_id      = data.tfe_outputs.vpc.vpc_id

  computed_ingress_with_source_security_group_id = [
    {
      rule                     = "http-80-tcp"
      source_security_group_id = data.tfe_outputs.frontend_alb_http_sg.security_group_id
    }
  ]
  number_of_computed_ingress_with_source_security_group_id = 1

  egress_rules = ["all-all"]

  tags = var.frontend_asg_sg_tags
}

module "frontend_asg" {
  source  = "terraform-aws-modules/autoscaling/aws"

  # Autoscaling group
  name = var.frontend_asg_name

  min_size                  = var.frontend_asg_min_size
  max_size                  = var.frontend_asg_max_size
  desired_capacity          = var.frontend_asg_desired_capacity
  wait_for_capacity_timeout = var.frontend_asg_wait_for_capacity_timeout
  health_check_type         = var.frontend_asg_health_check_type
  vpc_zone_identifier       = data.tfe_outputs.vpc.public_subnets
  target_group_arns         = data.tfe_outputs.frontend_alb.target_group_arns
  user_data                 = base64encode(local.user_data)

  # Launch template
  launch_template_name        = var.frontend_asg_launch_template_name
  launch_template_description = var.frontend_asg_launch_template_description
  update_default_version      = var.frontend_asg_update_default_version

  image_id          = var.frontend_asg_image_id
  instance_type     = var.frontend_asg_instance_type
  ebs_optimized     = var.frontend_asg_ebs_optimized
  enable_monitoring = var.frontend_asg_enable_monitoring

  # IAM role & instance profile
  create_iam_instance_profile = var.frontend_asg_create_iam_instance_profile
  iam_role_name               = var.frontend_asg_iam_role_name
  iam_role_path               = var.frontend_asg_iam_role_path
  iam_role_description        = var.frontend_asg_iam_role_description
  iam_role_tags               = var.frontend_asg_iam_role_tags
  iam_role_policies = {
    AmazonSSMManagedInstanceCore = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
    AccessPolicy                 = module.frontend_iam_policy.arn
  }

  block_device_mappings = [
    {
      # Root volume
      device_name = "/dev/xvda"
      no_device   = 0
      ebs = {
        delete_on_termination = true
        encrypted             = true
        volume_size           = var.frontend_asg_block_device_mappings_volume_size_0
        volume_type           = "gp2"
      }
      }, {
      device_name = "/dev/sda1"
      no_device   = 1
      ebs = {
        delete_on_termination = true
        encrypted             = true
        volume_size           = var.frontend_asg_block_device_mappings_volume_size_1
        volume_type           = "gp2"
      }
    }
  ]

  network_interfaces = [
    {
      delete_on_termination = true
      description           = "eth0"
      device_index          = 0
      security_groups       = [module.frontend_asg_sg.security_group_id]
    },
    {
      delete_on_termination = true
      description           = "eth1"
      device_index          = 1
      security_groups       = [module.frontend_asg_sg.security_group_id]
    }
  ]

  tag_specifications = [
    {
      resource_type = "instance"
      tags          = var.frontend_asg_instance_tags
    },
    {
      resource_type = "volume"
      tags          = var.frontend_asg_volume_tags
    }
  ]

  tags = var.frontend_asg_tags
}

data "aws_iam_policy_document" "backend_policy" {
  statement {
    sid       = "ListObjectsInBucket"
    actions   = ["s3:ListBucket"]
    resources = [data.tfe_outputs.s3.s3_bucket_arn]
  },
  statement {
    sid       = "AllObjectActions"
    actions   = ["s3:*Object"]
    resources = ["${data.tfe_outputs.s3.s3_bucket_arn}/*"]
  }
}

module "backend_iam_policy" {
  source = "terraform-aws-modules/iam/aws//modules/iam-policy"

  name        = var.backend_iam_policy
  path        = "/ec2/"

  policy = data.aws_iam_policy_document.backend_policy.json

  tags = var.backend_iam_policy_tags
}

module "backend_asg_sg" {
  source  = "terraform-aws-modules/security-group/aws"

  name        = var.backend_asg_sg_name
  description = var.backend_asg_sg_description
  vpc_id      = data.tfe_outputs.vpc.vpc_id

  computed_ingress_with_source_security_group_id = [
    {
      rule                     = "http-80-tcp"
      source_security_group_id = data.tfe_outputs.backend_alb_http_sg.security_group_id
    }
  ]
  number_of_computed_ingress_with_source_security_group_id = 1

  egress_rules = ["all-all"]

  tags = var.backend_asg_sg_tags
}

module "backend_asg" {
  source  = "terraform-aws-modules/autoscaling/aws"

  # Autoscaling group
  name = var.backend_asg_name

  min_size                  = var.backend_asg_min_size
  max_size                  = var.backend_asg_max_size
  desired_capacity          = var.backend_asg_desired_capacity
  wait_for_capacity_timeout = var.backend_asg_wait_for_capacity_timeout
  health_check_type         = var.backend_asg_health_check_type
  vpc_zone_identifier       = data.tfe_outputs.vpc.private_subnets
  target_group_arns         = data.tfe_outputs.backend_alb.target_group_arns
  user_data                 = base64encode(local.user_data)

  # Launch template
  launch_template_name        = var.backend_asg_launch_template_name
  launch_template_description = var.backend_asg_launch_template_description
  update_default_version      = var.backend_asg_update_default_version

  image_id          = var.backend_asg_image_id
  instance_type     = var.backend_asg_instance_type
  ebs_optimized     = var.backend_asg_ebs_optimized
  enable_monitoring = var.backend_asg_enable_monitoring

  # IAM role & instance profile
  create_iam_instance_profile = var.backend_asg_create_iam_instance_profile
  iam_role_name               = var.backend_asg_iam_role_name
  iam_role_path               = var.backend_asg_iam_role_path
  iam_role_description        = var.backend_asg_iam_role_description
  iam_role_tags               = var.backend_asg_iam_role_tags
  iam_role_policies = {
    AmazonSSMManagedInstanceCore = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore",
    AccessPolicy                 = module.backend_iam_policy.arn
  }

  block_device_mappings = [
    {
      # Root volume
      device_name = "/dev/xvda"
      no_device   = 0
      ebs = {
        delete_on_termination = true
        encrypted             = true
        volume_size           = var.backend_asg_block_device_mappings_volume_size_0
        volume_type           = "gp2"
      }
      }, {
      device_name = "/dev/sda1"
      no_device   = 1
      ebs = {
        delete_on_termination = true
        encrypted             = true
        volume_size           = var.backend_asg_block_device_mappings_volume_size_1
        volume_type           = "gp2"
      }
    }
  ]

  network_interfaces = [
    {
      delete_on_termination = true
      description           = "eth0"
      device_index          = 0
      security_groups       = [module.backend_asg_sg.security_group_id]
    },
    {
      delete_on_termination = true
      description           = "eth1"
      device_index          = 1
      security_groups       = [module.backend_asg_sg.security_group_id]
    }
  ]

  tag_specifications = [
    {
      resource_type = "instance"
      tags          = var.backend_asg_instance_tags
    },
    {
      resource_type = "volume"
      tags          = var.backend_asg_volume_tags
    }
  ]

  tags = var.backend_asg_tags
}
