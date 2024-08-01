resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name
}

variable "bucket_name" {
  description = "The bucket name."
  type        = string
}


terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
