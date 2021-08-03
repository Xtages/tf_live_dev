## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ecs"></a> [ecs](#module\_ecs) | git::https://github.com/Xtages/tf_ecs.git?ref=v0.1.4 |  |

## Resources

| Name | Type |
|------|------|
| [terraform_remote_state.xtages_dev_lb_infra](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |
| [terraform_remote_state.xtages_dev_vpc_infra](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/data-sources/remote_state) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | n/a | `string` | `"us-east-1"` | no |
| <a name="input_env"></a> [env](#input\_env) | n/a | `string` | `"development"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ecs_capacity_provider_name"></a> [ecs\_capacity\_provider\_name](#output\_ecs\_capacity\_provider\_name) | n/a |
| <a name="output_ecs_service_role_arn"></a> [ecs\_service\_role\_arn](#output\_ecs\_service\_role\_arn) | n/a |
| <a name="output_xtages_ecs_cluster_id"></a> [xtages\_ecs\_cluster\_id](#output\_xtages\_ecs\_cluster\_id) | n/a |
