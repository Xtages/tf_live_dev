module "main_vpc" {
  source     = "git::https://github.com/Xtages/tf_vpc.git?ref=v0.1.0"
  env        = var.env
  aws_region = var.aws_region
}
