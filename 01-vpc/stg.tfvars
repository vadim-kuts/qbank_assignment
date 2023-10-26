# Generic variables
region = "eu-west-1"

# VPC variables
vpc_name            = "stg-vpc"
vpc_cidr            = "10.1.0.0/16"
vpc_azs             = ["eu-west-1a", "eu-west-1b"]
vpc_public_subnets  = ["10.1.1.0/24", "10.1.2.0/24"]
vpc_private_subnets = ["10.1.11.0/24", "10.1.12.0/24"]
vpc_rdsdb_subnets   = ["10.1.21.0/24", "10.1.22.0/24"]
vpc_tags            = { "created-by" = "terraform" }
