provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "ubuntu-2204" {
  ami           = "ami-074dd8e8dac7651a5"
  instance_type = "t3.micro"
  tags = {
    Name = "my-first-ubuntu-server"
  }
}

