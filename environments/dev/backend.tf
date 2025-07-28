terraform {
  backend "s3" {
    bucket         = "ateh-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}