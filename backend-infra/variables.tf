## Terraform variables

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "profile" {
  type    = string
  default = "gft-workshop"
}

## Bucket

variable "bucket_name" {
  type    = string
  default = "terraform-backend-demo-gft"
}

## DynamoDB

variable "dynamodb_table_name" {
  type    = string
  default = "terraform-state-lock"
}