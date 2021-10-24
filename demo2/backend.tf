# terraform {
#   backend "s3" {
#     bucket         = "terraform-backend-demo-gft"
#     key            = "demo.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "terraform-state-lock"
#     profile        = "workshop-demo"
#   }
# }