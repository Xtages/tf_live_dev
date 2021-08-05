data "terraform_remote_state" "xtages_dev_vpc_infra" {
  backend = "s3"
  config = {
    bucket = "xtages-dev-tfstate"
    key    = "tfstate/us-east-1/development/vpc/terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_security_group" "postgres_sg" {
  vpc_id      = data.terraform_remote_state.xtages_dev_vpc_infra.outputs.vpc_id
  name        = "db-${var.env}-db-sg"
  description = "DB security group for Postgres"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Environment = var.env
    Terraform = true
  }
}
