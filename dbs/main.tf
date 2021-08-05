data "terraform_remote_state" "xtages_dev_vpc_infra" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_db_subnet_group" "default" {
  name       = "dbgroupname-${var.env}"
  subnet_ids = data.terraform_remote_state.xtages_dev_vpc_infra.outputs.private_subnets
}
