## Terraform variables

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "profile" {
  type    = string
<<<<<<< HEAD
  default = "workshop-demo"
=======
  default = "gft-workshop"
>>>>>>> origin
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