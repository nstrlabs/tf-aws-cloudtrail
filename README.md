# terraform-aws-cloudtrail

A Terraform module that creates AWS CloudTrail.

## Available Features

- Advanced Event Selector
- Event Selector

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | ~> 5.0 |
| <a name="requirement_random"></a> [random](#requirement_random) | >= 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider_aws) | ~> 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module_kms) | terraform-aws-modules/kms/aws | 3.1.1 |

## Resources

| Name | Type |
|------|------|
| [aws_cloudtrail.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudtrail) | resource |
| [aws_cloudwatch_log_group.cloudtrail](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_policy.cloudtrail_cloudwatch_logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_role.cloudtrail_cloudwatch_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.cloudtrail_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.cloudtrail_cloudwatch_logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.cloudtrail_kms_policy_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type |
|------|-------------|------|
| <a name="input_cloudwatch_log_group_name"></a> [cloudwatch_log_group_name](#input_cloudwatch_log_group_name) | The name of the CloudWatch Log Group that receives CloudTrail events. | `string` |
| <a name="input_enabled"></a> [enabled](#input_enabled) | Enables logging for the trail. Defaults to true. Setting this to false will pause logging. | `bool` |
| <a name="input_iam_policy_name"></a> [iam_policy_name](#input_iam_policy_name) | Name for the CloudTrail IAM policy | `string` |
| <a name="input_iam_role_name"></a> [iam_role_name](#input_iam_role_name) | Name for the CloudTrail IAM role | `string` |
| <a name="input_log_retention_days"></a> [log_retention_days](#input_log_retention_days) | Number of days to keep AWS logs around in specific log group. | `string` |
| <a name="input_org_trail"></a> [org_trail](#input_org_trail) | Whether or not this is an organization trail. Only valid in master account. | `string` |
| <a name="input_s3_bucket_name"></a> [s3_bucket_name](#input_s3_bucket_name) | The name of the AWS S3 bucket. | `string` |
| <a name="input_s3_key_prefix"></a> [s3_key_prefix](#input_s3_key_prefix) | S3 key prefix for CloudTrail logs | `string` |
| <a name="input_tags"></a> [tags](#input_tags) | A map of tags to add to all resources | `map(string)` |
| <a name="input_trail_name"></a> [trail_name](#input_trail_name) | Name for the Cloudtrail | `string` |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudtrail_arn"></a> [cloudtrail_arn](#output_cloudtrail_arn) | CloudTrail ARN |
| <a name="output_cloudtrail_home_region"></a> [cloudtrail_home_region](#output_cloudtrail_home_region) | CloudTrail Home Region |
| <a name="output_cloudtrail_id"></a> [cloudtrail_id](#output_cloudtrail_id) | CloudTrail ID |
<!-- END_TF_DOCS -->

[//]: # (BEGIN_TF_DOCS)
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | ~> 5.0 |
| <a name="requirement_random"></a> [random](#requirement_random) | >= 3.4 |

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider_aws) | ~> 5.0 |

#### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module_kms) | terraform-aws-modules/kms/aws | 3.1.1 |

#### Resources

| Name | Type |
|------|------|
| [aws_cloudtrail.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudtrail) | resource |
| [aws_cloudwatch_log_group.cloudtrail](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_policy.cloudtrail_cloudwatch_logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_role.cloudtrail_cloudwatch_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.cloudtrail_assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.cloudtrail_cloudwatch_logs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.cloudtrail_kms_policy_doc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

#### Inputs

| Name | Description | Type |
|------|-------------|------|
| <a name="input_cloudwatch_log_group_name"></a> [cloudwatch_log_group_name](#input_cloudwatch_log_group_name) | The name of the CloudWatch Log Group that receives CloudTrail events. | `string` |
| <a name="input_enabled"></a> [enabled](#input_enabled) | Enables logging for the trail. Defaults to true. Setting this to false will pause logging. | `bool` |
| <a name="input_iam_policy_name"></a> [iam_policy_name](#input_iam_policy_name) | Name for the CloudTrail IAM policy | `string` |
| <a name="input_iam_role_name"></a> [iam_role_name](#input_iam_role_name) | Name for the CloudTrail IAM role | `string` |
| <a name="input_log_retention_days"></a> [log_retention_days](#input_log_retention_days) | Number of days to keep AWS logs around in specific log group. | `string` |
| <a name="input_org_trail"></a> [org_trail](#input_org_trail) | Whether or not this is an organization trail. Only valid in master account. | `string` |
| <a name="input_s3_bucket_name"></a> [s3_bucket_name](#input_s3_bucket_name) | The name of the AWS S3 bucket. | `string` |
| <a name="input_s3_key_prefix"></a> [s3_key_prefix](#input_s3_key_prefix) | S3 key prefix for CloudTrail logs | `string` |
| <a name="input_tags"></a> [tags](#input_tags) | A map of tags to add to all resources | `map(string)` |
| <a name="input_trail_name"></a> [trail_name](#input_trail_name) | Name for the Cloudtrail | `string` |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudtrail_arn"></a> [cloudtrail_arn](#output_cloudtrail_arn) | CloudTrail ARN |
| <a name="output_cloudtrail_home_region"></a> [cloudtrail_home_region](#output_cloudtrail_home_region) | CloudTrail Home Region |
| <a name="output_cloudtrail_id"></a> [cloudtrail_id](#output_cloudtrail_id) | CloudTrail ID |

[//]: # (END_TF_DOCS)
