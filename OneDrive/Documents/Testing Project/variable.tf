variable "trusted_service"{
type = string
description = "the aws service principal"
default = "lambda.amazonaws.com" 
}

variable "password_reuse_prevention" {
    type = number
    default = 24  
}

variable "max_password_age" {
  type = number
  default = 3
}

variable "mininum_password_length" {
    type = number
    default = 14  
}

variable "require_lowercase_characters" {
    type = bool
    default = true
  
}