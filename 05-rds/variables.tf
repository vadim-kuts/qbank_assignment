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

# RDS variables
variable "rds_sg_name" {
  description = "RDS security group name"
  type        = string
  default     = "rds-sg"
}

variable "rds_sg_description" {
  description = "RDS security group description"
  type        = string
  default     = "rds-sg"
}

variable "rds_sg_tags" {
  description = "RDS security group tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "option_group_name_rds" {
  description = "Name of the option group"
  type        = string
  default     = "rds-og"
}

variable "option_group_description_rds" {
  description = "The description of the option group"
  type        = string
  default     = "rds-og"
}

variable "rds_identifier" {
  description = "RDS identifier"
  type        = string
  default     = "rds"
}

variable "rds_engine" {
  description = "RDS engine"
  type        = string
  default     = "postgres"
}

variable "rds_engine_version" {
  description = "RDS engine version"
  type        = string
  default     = "14"
}

variable "rds_family" {
  description = "RDS family"
  type        = string
  default     = "postgres14"
}

variable "rds_major_engine_version" {
  description = "RDS major engine version"
  type        = string
  default     = "14"
}

variable "rds_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t2.small"
}

variable "rds_allocated_storage" {
  description = "RDS allocated storage"
  type        = number
  default     = 20
}

variable "rds_max_allocated_storage" {
  description = "RDS max allocated storage"
  type        = number
  default     = 100
}

variable "rds_db_name" {
  description = "RDS db name"
  type        = string
  default     = "settings"
}

variable "rds_username" {
  description = "RDS username"
  type        = string
  default     = "admin"
}

variable "rds_port" {
  description = "RDS port"
  type        = number
  default     = 5432
}

variable "rds_multi_az" {
  description = "RDS multi az"
  type        = bool
  default     = false
}

variable "rds_maintenance_window" {
  description = "RDS window"
  type        = string
  default     = "Mon:00:00-Mon:03:00"
}

variable "rds_backup_window" {
  description = "RDS backup window"
  type        = string
  default     = "03:00-06:00"
}

variable "rds_enabled_cloudwatch_logs_exports" {
  description = "RDS enabled cloudwatch log exports"
  type        = list(any)
  default     = ["general"]
}

variable "rds_create_cloudwatch_log_group" {
  description = "RDS create cloudwatch log group"
  type        = bool
  default     = true
}

variable "rds_backup_retention_period" {
  description = "RDS backup retention period"
  type        = number
  default     = 0
}

variable "rds_skip_final_snapshot" {
  description = "RDS skip final snapshot"
  type        = bool
  default     = true
}

variable "rds_deletion_protection" {
  description = "RDS deletion protection"
  type        = bool
  default     = false
}

variable "rds_performance_insights_enabled" {
  description = "RDS insights enabled"
  type        = bool
  default     = false
}

variable "rds_performance_insights_retention_period" {
  description = "RDS retention period"
  type        = number
  default     = 7
}

variable "rds_create_monitoring_role" {
  description = "RDS create monitoring role"
  type        = bool
  default     = true
}

variable "rds_monitoring_interval" {
  description = "RDS monitoring interval"
  type        = number
  default     = 60
}

variable "rds_tags" {
  description = "RDS tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "rds_db_instance_tags" {
  description = "RDS db instance tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "rds_db_option_group_tags" {
  description = "RDS db option group tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "rds_db_parameter_group_tags" {
  description = "RDS db parameter group tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}

variable "rds_db_subnet_group_tags" {
  description = "RDS db subnet group tags"
  type        = map(string)
  default     = { "created-by" = "terraform" }
}
