
terraform {
  backend "s3" {
    bucket         = "benson-s3-demo-rbbucket" # change this
    key            = "benson/terraform.tfstate"
    region         = "us-west-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

