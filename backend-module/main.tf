## Backend module

module "backend_module" {
    source = "../backend-infra"

    region = var.region
    profile = var.profile

    #BACKEND 
    bucket_name = var.bucket_name
    dynamodb_table_name = var.dynamodb_table_name
}