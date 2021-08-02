## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_lb_console"></a> [lb\_console](#module\_lb\_console) | git::https://github.com/Xtages/tf_lbs.git?ref=v0.1.1 |  |
| <a name="module_lb_customers"></a> [lb\_customers](#module\_lb\_customers) | git::https://github.com/Xtages/tf_lbs.git?ref=v0.1.1 |  |

## Resources

| Name | Type |
|------|------|
| [terraform_remote_state.xtages_dev_infra](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `"development"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_customers_ecs_sg_id"></a> [customers\_ecs\_sg\_id](#output\_customers\_ecs\_sg\_id) | n/a |
| <a name="output_xtages_console_alb_arn"></a> [xtages\_console\_alb\_arn](#output\_xtages\_console\_alb\_arn) | n/a |
| <a name="output_xtages_customers_alb_arn"></a> [xtages\_customers\_alb\_arn](#output\_xtages\_customers\_alb\_arn) | n/a |
| <a name="output_xtages_ecs_sg_id"></a> [xtages\_ecs\_sg\_id](#output\_xtages\_ecs\_sg\_id) | n/a |
