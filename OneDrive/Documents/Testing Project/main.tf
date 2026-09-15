resource "aws_s3_bucket" "testbucket" {
  bucket = "testbucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}