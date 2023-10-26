# Generic variables
region = "eu-west-1"

# ALB variables
frontend_alb_sg_name                    = "stg-frontend_alb-sg"
frontend_alb_sg_ingress_cidr_blocks     = ["172.24.58.9/24"]
frontend_alb_sg_description             = "stg-frontend_alb-sg"
frontend_alb_sg_tags                    = { "Name" = "stg-frontend_alb-sg", "created-by" = "terraform" }
frontend_alb_name                       = "stg-frontend_alb"
frontend_alb_http_tcp_listeners_port    = 80
frontend_alb_target_group_name          = "stg-frontend_alb-tg"
frontend_alb_target_groups_backend_port = 80
frontend_alb_tags                       = { "Name" = "stg-frontend_alb", "created-by" = "terraform" }

backend_alb_sg_name                    = "stg-backend_alb-sg"
backend_alb_sg_ingress_cidr_blocks     = ["10.1.11.0/24", "10.1.12.0/24"]
backend_alb_sg_description             = "stg-backend_alb-sg"
backend_alb_sg_tags                    = { "Name" = "stg-backend_alb-sg", "created-by" = "terraform" }
backend_alb_name                       = "stg-backend_alb"
backend_alb_http_tcp_listeners_port    = 80
backend_alb_target_group_name          = "stg-backend_alb-tg"
backend_alb_target_groups_backend_port = 80
backend_alb_tags                       = { "Name" = "stg-backend_alb", "created-by" = "terraform" }
