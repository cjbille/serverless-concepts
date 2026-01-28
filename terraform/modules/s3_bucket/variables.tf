variable "bucket_name" {
  description = "The unique name for the S3 bucket"
  type        = string
}

variable "environment" {
  description = "Application environment (e.g., dev, prod)"
  type        = string
  default     = "dev"
}
