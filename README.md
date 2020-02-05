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
|------|-------------|:----:|:-----:|:-----:|
| common\_name | common name of the AWS CA. | string | `""` | yes |
| name | name of the AWS CA. This can be the same as the common name | string | `""` | yes |
| type | The type of the certificate authority. Defaults to SUBORDINATE. Valid values: ROOT and SUBORDINATE. | string | ROOT | yes |
| tags | pecifies a key-value map of user-defined tags that are attached to the certificate authority. | list | `<map>` | no |
