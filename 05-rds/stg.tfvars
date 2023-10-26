# Generic variables
region = "eu-west-1"

# RDS variables
rds_sg_name                               = "stg-rds-sg"
rds_sg_description                        = "stg-rds-sg"
rds_sg_tags                               = { "Name" = "stg-rds-sg", "created-by" = "terraform" }
rds_identifier                            = "stg-rds"
rds_engine                                = "postgres"
rds_engine_version                        = "14"
rds_family                                = "postgres14" # DB parameter group
rds_major_engine_version                  = "14"         # DB option group
rds_instance_class                        = "db.t2.small"
rds_allocated_storage                     = 5
rds_max_allocated_storage                 = 20
rds_db_name                               = "settings"
rds_username                              = "admin"
rds_port                                  = 5432
rds_multi_az                              = false
rds_maintenance_window                    = "Mon:00:00-Mon:03:00"
rds_backup_window                         = "03:00-06:00"
rds_enabled_cloudwatch_logs_exports       = ["general"]
rds_create_cloudwatch_log_group           = true
rds_backup_retention_period               = 0
rds_skip_final_snapshot                   = true
rds_deletion_protection                   = false
rds_performance_insights_enabled          = false
rds_performance_insights_retention_period = 7
rds_create_monitoring_role                = true
rds_monitoring_interval                   = 60
rds_tags                                  = { "Name" = "stg-rds", "created-by" = "terraform" }
rds_db_instance_tags                      = { "Name" = "stg-Intance", "created-by" = "terraform" }
rds_db_option_group_tags                  = { "Name" = "stg-option-group", "created-by" = "terraform" }
rds_db_parameter_group_tags               = { "Name" = "stg-parameter-group", "created-by" = "terraform" }
rds_db_subnet_group_tags                  = { "Name" = "stg-subnet-group", "created-by" = "terraform" }
