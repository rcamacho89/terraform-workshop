# Create s3 bucket to store tfstate files 
resource "aws_s3_bucket" "terraform-tfstate-storage" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }


}

# Create Dynamo table for lock file
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name           = var.dynamodb_table_name
  hash_key       = "LockID"
  read_capacity  = 2
  write_capacity = 2

  attribute {
    name = "LockID"
    type = "S"
  }

}