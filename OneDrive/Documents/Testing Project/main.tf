resource "aws_iam_account_password_policy" "strickcompliance" {
      password_reuse_prevention = var.password_reuse_prevention
      max_password_age = var.max_password_age
      require_lowercase_characters = var.require_lowercase_characters
  
}
