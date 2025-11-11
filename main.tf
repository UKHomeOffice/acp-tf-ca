locals {
  email_tags = { for i, email in var.email_addresses : "email${i}" => email }
}

resource "aws_acmpca_certificate_authority" "ca_authority" {

  certificate_authority_configuration {
    key_algorithm     = "RSA_4096"
    signing_algorithm = "SHA512WITHRSA"

    subject {
      common_name = var.common_name
    }
  }

  type                            = var.type
  permanent_deletion_time_in_days = 7

  tags = merge(
    var.tags,
    {
      "Name" = format("%s-%s", var.environment, var.name)
    },
    {
      "Env" = var.environment
    },
  )

}

resource "aws_iam_user" "acmpca_iam_user" {
  name = "${var.name}-acmpca-user"
  path = "/"

  tags = merge(
    var.tags,
    local.email_tags,
    {
      "key_rotation" = var.key_rotation
    },
  )
}

#policy attachment for CA policy
resource "aws_iam_policy" "acmpca_policy" {
  name = "${var.name}-acmpcaPolicy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "IAMacmpcaPermissions",
      "Effect": "Allow",
      "Action": [
        "acm-pca:IssueCertificate",
        "acm-pca:GetCertificate"
      ],
      "Resource": "${aws_acmpca_certificate_authority.ca_authority.arn}"
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "acmpca_iam_policy_attachment" {
  name       = "${var.name}-acmpcaPolicy-attachment"
  users      = [aws_iam_user.acmpca_iam_user.name]
  policy_arn = aws_iam_policy.acmpca_policy.arn
}

module "self_serve_access_keys" {
  source     = "git::https://github.com/UKHomeOffice/acp-tf-self-serve-access-keys?ref=v0.2.0"
  user_names = aws_iam_user.acmpca_iam_user.*.name
}