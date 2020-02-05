
variable "common_name" {
  description = "Common name of the AWS CA"
  default     = ""
}

variable "environment" {
  description = "Environment of the AWS CA"
  default     = ""
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