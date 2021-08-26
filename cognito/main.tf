data "terraform_remote_state" "xtages_dev_infra" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/ses/terraform.tfstate"
    region = "us-east-1"
  }
}

module "cognito" {
  source                         = "git::https://github.com/Xtages/tf_cognito.git?ref=v0.1.2"
  no_reply_at_xtages_dot_com_arn = data.terraform_remote_state.xtages_dev_infra.outputs.domain_identity_arn
  env                            = var.env
  region                         = var.aws_region
  account_id                     = var.account_id
  domain_name                    = var.domain_name
}
