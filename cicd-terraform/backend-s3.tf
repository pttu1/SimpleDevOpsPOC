#CREATE S3 REMOTE STORAGE FOR STATE FILE
terraform {
  backend "s3" {
      bucket = "vprofile-kops-k8s"
      region = "us-east-1"
      dynamodb_table = "tf-state-locking"
      encrypt = true
  }
}

#CREATE LOCKING MECHANISM WITH DYNAMODB
resource "aws_dynamodb_table" "tf-locks" {
  name = "tf-state-locking"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}