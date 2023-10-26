# Generic variables
region = "eu-west-1"

# ALB variables
frontend_alb_sg_name                    = "prod-frontend_alb-sg"
frontend_alb_sg_ingress_cidr_blocks     = ["0.0.0.0/0"]
frontend_alb_sg_description             = "prod-frontend_alb-sg"
frontend_alb_sg_tags                    = { "Name" = "prod-frontend_alb-sg", "created-by" = "terraform" }
frontend_alb_name                       = "prod-frontend_alb"
frontend_alb_http_tcp_listeners_port    = 80
frontend_alb_target_group_name          = "prod-frontend_alb-tg"
frontend_alb_target_groups_backend_port = 80
frontend_alb_tags                       = { "Name" = "prod-frontend_alb", "created-by" = "terraform" }

backend_alb_sg_name                    = "prod-backend_alb-sg"
backend_alb_sg_ingress_cidr_blocks     = ["10.0.11.0/24", "10.0.12.0/24"]
backend_alb_sg_description             = "prod-backend_alb-sg"
backend_alb_sg_tags                    = { "Name" = "prod-backend_alb-sg", "created-by" = "terraform" }
backend_alb_name                       = "prod-backend_alb"
backend_alb_http_tcp_listeners_port    = 80
backend_alb_target_group_name          = "prod-backend_alb-tg"
backend_alb_target_groups_backend_port = 80
backend_alb_tags                       = { "Name" = "prod-backend_alb", "created-by" = "terraform" }
