variable "user_names" {
  description = "IAM-USERS"
  type = set(string)
  default = ["user10", "user20", "user30"]
}

resource "aws_iam_user" "example" {
  for_each = var.user_names
  name = each.value
}