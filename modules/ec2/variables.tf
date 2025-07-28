variable "environment" {
  description = "Environment name (dev/prod)"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for Jenkins server"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.medium"
}

variable "key_name" {
  description = "EC2 Key Pair name"
  type        = string
}

variable "allowed_ssh_cidr" {
  description = "CIDR blocks allowed for SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "allowed_jenkins_cidr" {
  description = "CIDR blocks allowed for Jenkins web access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "root_volume_size" {
  description = "Size of root volume in GB"
  type        = number
  default     = 30
}

variable "artifacts_bucket_arn" {
  description = "ARN of S3 bucket for build artifacts"
  type        = string
}