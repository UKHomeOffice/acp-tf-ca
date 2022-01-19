# acp-tf-ca


Module usage:

     module "ca" {
       source = "git::https://github.com/UKHomeOffice/acp-tf-ca?ref=master"

       name                   = "aws-ca"
       common_name            = "example"
       type                   = "ROOT"
     }

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.72.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_self_serve_access_keys"></a> [self\_serve\_access\_keys](#module\_self\_serve\_access\_keys) | git::https://github.com/UKHomeOffice/acp-tf-self-serve-access-keys | v0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_acmpca_certificate_authority.ca_authority](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acmpca_certificate_authority) | resource |
| [aws_iam_policy.acmpca_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_attachment.acmpca_iam_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) | resource |
| [aws_iam_user.acmpca_iam_user](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | Common name of the AWS CA | `string` | `""` | no |
| <a name="input_email_addresses"></a> [email\_addresses](#input\_email\_addresses) | A list of email addresses for key rotation notifications. | `list(string)` | `[]` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment of the AWS CA | `string` | `""` | no |
| <a name="input_key_rotation"></a> [key\_rotation](#input\_key\_rotation) | Enable email notifications for old IAM keys. | `string` | `"true"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the AWS CA | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Specifies a key-value map of user-defined tags that are attached to the certificate authority. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of the certificate authority.Defaults to ROOT. Valid values: ROOT and SUBORDINATE. | `string` | `"ROOT"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ca_certificate_arn"></a> [ca\_certificate\_arn](#output\_ca\_certificate\_arn) | The  ca arn |
<!-- END_TF_DOCS -->