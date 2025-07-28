variable "environment" {
  description = "Environment name"
  type        = string
}

variable "bucket_name" {
  description = "Base name for S3 bucket"
  type        = string
}

variable "enable_versioning" {
  description = "Enable S3 bucket versioning"
  type        = bool
  default     = true
}

variable "lifecycle_days" {
  description = "Number of days to retain old versions"
  type        = number
  default     = 30
}