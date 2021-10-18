data "terraform_remote_state" "xtages_dev_vpc_infra" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

module "codebuild" {
  source     = "git::https://github.com/Xtages/tf_codebuild.git?ref=v0.1.7"
  env        = var.env
  account_id = var.account_id
  subnets = data.terraform_remote_state.xtages_dev_vpc_infra.outputs.private_subnets
}
