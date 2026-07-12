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
    default = 24
}

variable "require_lowercase_characters" {
    type = bool
    default = true
  
}