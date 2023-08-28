resource "aws_instance" "instance1" {
  ami = "ami-03265a0778a880afb"
  instance_type = var.instance_type

  tags = {
    Name = var.environment_name
  }
}

