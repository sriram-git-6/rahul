resource "aws_instance" "instance1" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform ec2"
  }
}

output "instance_publicip_is" {
  value = aws_instance.instance1.public_ip
  sensitive = true
  #if sensitive is true then it does not show any sensitive information in this case it will not show the public ip
}