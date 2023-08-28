variable "user_names" {
  description = "IAM-USERS"
  type = list(string)
  default = ["user10", "user20", "user30"]
}

output "print_the_names" {
  value = [for name in var.user_names : name]
}