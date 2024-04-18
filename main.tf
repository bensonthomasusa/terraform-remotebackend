provider "aws" {
  region = "us-west-1"
}

resource "aws_s3_bucket" "ben_s3_rbbucket" {
  bucket = "benson-s3-demo-rbbucket" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}


resource "aws_instance" "benson-server" {
    ami             = "ami-02bfcfbf6fc7e8ce4"  # Specify an appropriate AMI ID
    instance_type   = "t2.micro"
    subnet_id       = "subnet-0d06bf8ed376d72fa"
}
