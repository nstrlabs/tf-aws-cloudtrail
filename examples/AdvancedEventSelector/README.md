## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

**_NOTE:_**  S3 bucket must have been created.

[//]: # (BEGIN_TF_DOCS)
#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.3.6 |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | >= 5.4.0 |

#### Providers

No providers.

#### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cloudtrail"></a> [cloudtrail](#module_cloudtrail) | ../..// | n/a |

#### Resources

No resources.

#### Inputs

No inputs.

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_cloudtrail_arn"></a> [aws_cloudtrail_arn](#output_aws_cloudtrail_arn) | ARN of the trail. |
| <a name="output_aws_cloudtrail_home_region"></a> [aws_cloudtrail_home_region](#output_aws_cloudtrail_home_region) | Region in which the trail was created. |
| <a name="output_aws_cloudtrail_id"></a> [aws_cloudtrail_id](#output_aws_cloudtrail_id) | Name of the trail. |
| <a name="output_aws_cloudtrail_tags_all"></a> [aws_cloudtrail_tags_all](#output_aws_cloudtrail_tags_all) | Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block. |

[//]: # (END_TF_DOCS)