## Terraform variables

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "profile" {
  type    = string
  default = "workshop-demo"
}

## Bucket

variable "bucket_name" {
  type    = string
  default = "terraform-backend-demo-90909999"
}

## DynamoDB

variable "dynamodb_table_name" {
  type    = string
  default = "terraform-state-lock"
}