terraform {
  backend "s3" {
    bucket         = "your-terraform-bucket-77-obi"
    key            = "terraform/terraform.state"
    region         = "eu-west-1"
    dynamodb_table = "eks-terraform-state-77-obi"
  }
}

