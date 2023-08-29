variable "user_names" {
  default = ["user10", "user20", "user30"]
}

resource "aws_iam_user" "example" {
  count = length(var.user_names)
  name = var.user_names[count.index]
}

