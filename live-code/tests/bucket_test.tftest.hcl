run "create_bucket" {
  command = plan

  variables {
    bucket_name = "holaluz-test"
  }

  # Check that the bucket name is correct
  assert {
    condition     = aws_s3_bucket.bucket.bucket == var.bucket_name
    error_message = "Invalid bucket name"
  }
}


#mock_provider "aws" {}