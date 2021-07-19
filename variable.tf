
variable "common_name" {
  description = "Common name of the AWS CA"
  default     = ""
}

variable "email_addresses" {
  description = "A list of email addresses for key rotation notifications."
  default     = []
}

variable "environment" {
  description = "Environment of the AWS CA"
  default     = ""
}

variable "key_rotation" {
  description = "Enable email notifications for old IAM keys."
  default     = "true"
}

variable "name" {
  description = "Name of the AWS CA"
  default     = ""
}

variable "type" {
  description = "The type of the certificate authority.Defaults to ROOT. Valid values: ROOT and SUBORDINATE."
  default     = "ROOT"
}

variable "tags" {
  description = "Specifies a key-value map of user-defined tags that are attached to the certificate authority."
  default     = {}
}