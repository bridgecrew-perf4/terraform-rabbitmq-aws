provider "aws" {
  region  = "eu-west-2"
  profile = var.profile
}

resource "aws_instance" "rmq" {
  ami                    = "ami-0ff4c8fb495a5a50d"
  instance_type          = "t2.micro"
  key_name               = "rabbitmq"
  vpc_security_group_ids = ["sg-07d394602fe08e2d9"]
  tags = {
    "Name"  = var.name
    "group" = var.group
  }
}