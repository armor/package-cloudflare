# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# ---------------------------------------------------------------------------------------------------------------------

variable "email_address" {
  description = "The email address of the user being added."
  type        = string
}

variable "role_ids" {
  description = "A set of role IDs to which the user will be assigned."
  type        = set(string)
}
