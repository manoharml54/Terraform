terraform {
  backend "s3" {
    bucket         = "manohar-s3-demo-xyz" # change this
    key            = "manu/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}