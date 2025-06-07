variable "key_name" {
  description = "my-key-pair"
  type        = string
}

variable "state_bucket" {
  description = "S3 bucket for Terraform state"
  type        = string
  
}