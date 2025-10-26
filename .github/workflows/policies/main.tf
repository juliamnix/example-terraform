resource "aws_s3_bucket" "my_bucket" {
  bucket = "example-bucket"
  # intentionally missing tags to test the policy
}

test
