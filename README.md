# acp-tf-ca


Module usage:

     module "ca" {
       source = "git::https://github.com/UKHomeOffice/acp-tf-ca?ref=master"

       name                   = "aws-ca"
       common_name            = "example"
       type                   = "ROOT"
     }

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_common_name"></a> [common\_name](#input\_common\_name) | Common name of the AWS CA | `string` | `""` | no |
| <a name="input_email_addresses"></a> [email\_addresses](#input\_email\_addresses) | A list of email addresses for key rotation notifications. | `list` | `[]` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment of the AWS CA | `string` | `""` | no |
| <a name="input_key_rotation"></a> [key\_rotation](#input\_key\_rotation) | Enable email notifications for old IAM keys. | `string` | `"true"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the AWS CA | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Specifies a key-value map of user-defined tags that are attached to the certificate authority. | `map` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of the certificate authority.Defaults to ROOT. Valid values: ROOT and SUBORDINATE. | `string` | `"ROOT"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ca_certificate_arn"></a> [ca\_certificate\_arn](#output\_ca\_certificate\_arn) | The  ca arn | 