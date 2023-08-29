resource "aws_instance" "instance1" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform ec2"
  }
}

output "my_console_output" {
  value = aws_instance.instance1.public_ip
}