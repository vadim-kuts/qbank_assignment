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

variable "s3_bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "s3_bucket"
}
