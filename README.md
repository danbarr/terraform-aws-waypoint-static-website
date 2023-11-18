# Terraform module for a static website provisioned by HCP Waypoint

Provisions an AWS S3 bucket configured for static website hosting, with a sample HashiCafe website.

Enabled for Terraform Cloud [no-code provisioning](https://developer.hashicorp.com/terraform/cloud-docs/no-code-provisioning/module-design) and designed for use by HCP Waypoint. The HCP Waypoint project name will be used to build the bucket name.

## Prerequisites

For no-code provisioning, AWS credentials must be supplied to the workspace via environment variables (e.g. `AWS_ACCESS_KEY_ID`, `AWS_SECRET_ACCESS_KEY`) or using [dynamic provider credentials](https://developer.hashicorp.com/terraform/cloud-docs/workspaces/dynamic-provider-credentials).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0, < 5.17.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0, < 5.17.0 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.www_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_ownership_controls.www_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_policy.www_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.www_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.www_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.www_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_s3_bucket_website_configuration.www_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration) | resource |
| [aws_s3_object.images](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.index](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [random_integer.product](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) | resource |
| [aws_iam_policy_document.s3_public_access_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | Route 53 hosted zone domain name. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region where the resources are created. | `string` | n/a | yes |
| <a name="input_waypoint_project"></a> [waypoint\_project](#input\_waypoint\_project) | Name of the Waypoint project. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | Name of the S3 bucket. |
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | URL endpoint of the website. |
| <a name="output_product"></a> [product](#output\_product) | The product which was randomly selected. |
<!-- END_TF_DOCS -->