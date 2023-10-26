data "tfe_outputs" "vpc" {
  organization = "qbank"
  workspace = "vpc"
}

module "frontend_alb_http_sg" {
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = var.frontend_alb_sg_name
  vpc_id      = data.tfe_outputs.vpc.vpc_id
  description = var.frontend_alb_sg_description

  ingress_cidr_blocks = var.frontend_alb_sg_ingress_cidr_blocks
  tags                = var.frontend_alb_sg_tags
}

module "frontend_alb" {
  source          = "terraform-aws-modules/frontend_alb/aws"
  name            = var.frontend_alb_name
  vpc_id          = data.tfe_outputs.vpc.vpc_id
  subnets         = data.tfe_outputs.vpc.public_subnets
  security_groups = [module.frontend_alb_http_sg.security_group_id]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  target_groups = [
    {
      name             = var.frontend_alb_target_group_name
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      stickiness       = { "enabled" = true, "type" = "lb_cookie" }
      health_check = {
        enabled             = true
        interval            = 30
        path                = "/index.html"
        port                = "traffic-port"
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 6
        protocol            = "HTTP"
        matcher             = "200-399"
      }
    },
  ]

  tags = var.frontend_alb_tags
}

module "backend_alb_http_sg" {
  source  = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = var.backend_alb_sg_name
  vpc_id      = data.tfe_outputs.vpc.vpc_id
  description = var.backend_alb_sg_description

  ingress_cidr_blocks = var.backend_alb_sg_ingress_cidr_blocks
  tags                = var.backend_alb_sg_tags
}

module "backend_alb" {
  source          = "terraform-aws-modules/backend_alb/aws"
  name            = var.backend_alb_name
  vpc_id          = data.tfe_outputs.vpc.vpc_id
  subnets         = data.tfe_outputs.vpc.public_subnets
  security_groups = [module.backend_alb_http_sg.security_group_id]

  http_tcp_listeners = [
    {
      port               = 8080
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  target_groups = [
    {
      name             = var.backend_alb_target_group_name
      backend_protocol = "HTTP"
      backend_port     = 8080
      target_type      = "instance"
      stickiness       = { "enabled" = true, "type" = "lb_cookie" }
      health_check = {
        enabled             = true
        interval            = 30
        path                = "/index.html"
        port                = "traffic-port"
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 6
        protocol            = "HTTP"
        matcher             = "200-399"
      }
    },
  ]

  tags = var.backend_alb_tags
}
