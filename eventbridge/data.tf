data "terraform_remote_state" "xtages_sns_sqs" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/sns-sqs/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "ecs_customer_staging" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/ecs-customer/staging/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "ecs_customer_production" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/ecs-customer/production/terraform.tfstate"
    region = "us-east-1"
  }
}
