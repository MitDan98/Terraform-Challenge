# backend.tf
terraform {
  backend "s3" {
    bucket         = "casino2-tf-statefile" 
    key            = "casino-app/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
