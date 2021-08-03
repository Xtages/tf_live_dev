data "terraform_remote_state" "xtages_dev_infra" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

module "jumphost" {
  source         = "git::https://github.com/Xtages/tf_jumphost.git?ref=v0.1.0"
  env            = var.env
  vpc_id         = data.terraform_remote_state.xtages_dev_infra.outputs.vpc_id
  public_subnets = data.terraform_remote_state.xtages_dev_infra.outputs.public_subnets
}
