terraform {
  backend "s3" {
    bucket         = "terraform-backend-demo-90909999"
    key            = "demo.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-lock"
    profile        = "workshop-demo"
  }
}