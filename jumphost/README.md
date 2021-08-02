## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_jumphost"></a> [jumphost](#module\_jumphost) | git::https://github.com/Xtages/tf_jumphost.git?ref=v0.1.0 |  |

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
| <a name="output_jumphost_ip"></a> [jumphost\_ip](#output\_jumphost\_ip) | n/a |
