terraform {
backend "s3" {
    bucket         = "yordanka-terraform-state-backend"
    key            = "path/to/my/key"
    region         = "eu-central-1"
    dynamodb_table = "terraform_state"
  }

}

