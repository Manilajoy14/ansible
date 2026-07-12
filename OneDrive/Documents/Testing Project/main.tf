resource "aws_iam_role" "lambdaexecutiontest"{
      name = "lambdaexecutiontest"
      assume_role_policy = data.aws_iam_policy_document.trust_policy.json
}

data "aws_iam_policy_document" "trust_policy" {
statement {
  actions = ["sts:AssumeRole"]
  effect = "Allow"

  principals {
    type = "Service"
    identifiers = [var.trusted_service]
  }
}
}
data "aws_iam_policy_document" "permission_policy" {
      statement {
        actions = ["s3:putObject"]
        effect = "Allow"
        resources = ["*"]
      }  
}
resource "aws_iam_policy" "test" {
  name = "test"
  policy = data.aws_iam_policy_document.permission_policy.json

  tags = {
      environment = "test"
      manageby = "terraform"
  }
}

