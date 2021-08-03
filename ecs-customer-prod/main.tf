data "terraform_remote_state" "xtages_dev_vpc_infra" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

data "terraform_remote_state" "xtages_dev_lb_infra" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/lbs/terraform.tfstate"
    region = "us-east-1"
  }
}

module "ecs" {
  source             = "git::https://github.com/Xtages/tf_ecs.git?ref=v0.1.4"
  cluster_name       = "xtages-customer-production"
  env                = var.env
  aws_region         = var.aws_region
  vpc_id             = data.terraform_remote_state.xtages_dev_vpc_infra.outputs.vpc_id
  private_subnet_ids = data.terraform_remote_state.xtages_dev_vpc_infra.outputs.private_subnets
  public_subnet_ids  = data.terraform_remote_state.xtages_dev_vpc_infra.outputs.public_subnets
  ecs_sg_id          = data.terraform_remote_state.xtages_dev_lb_infra.outputs.customers_ecs_sg_id
  asg_min_size       = 0
}
