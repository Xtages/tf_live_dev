terraform {
  backend "s3" {
    bucket         = "xtages-dev-tfstate"
    key            = "tfstate/us-east-1/development/iam-console/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}
