variable "env" {
  default = "development"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "account_id" {
  description = "AWS account ID, defaults to our development account"
  default     = "605769209612"
}
