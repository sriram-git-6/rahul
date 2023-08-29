locals {
  staging_env = "staging"
}

resource "aws_instance" "instance1" {
  ami = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.staging-subnet.id

  tags = {
    Name = "${local.staging_env}-Terraform ec2"
  }
}

resource "aws_vpc" "staging_vpc" {
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "${local.staging_env}-vpc-tag"
  }
}

resource "aws_subnet" "staging-subnet" {
  vpc_id = aws_vpc.staging_vpc.id
  cidr_block = "10.5.0.0/16"

  tags = {
    Name = "${local.staging_env}-subnet-tag"
  }
}



