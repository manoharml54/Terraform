provider "aws" {
  ##Configure aws cli for authentication
  region = "us-east-1"
}

resource "aws_iam_user" "IAMUSER" {
  count = length(var.user_names)
  name = var.user_names[count.index]
}