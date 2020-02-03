
output "ca_certificate_arn" {
  description = "The  ca arn"
  value       = element(concat(aws_acmpca_certificate_authority.ca_authority.*.arn, [""]), 0)
}