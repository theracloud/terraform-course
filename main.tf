provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "ubuntu-2204" {
  ami           = "ami-074dd8e8dac7651a5"
  instance_type = "t3.micro"
<<<<<<< HEAD
  vpc_security_group_ids = [aws_security_group.web-sg.id] 
  user_data                   = <<-EOF
    #!/bin/bash
    echo "Hello, World" > index.html
    nohup busybox httpd -f -p 80 &
    EOF
  user_data_replace_on_change = true

  tags = {
    Name = "my-first-ubuntu-server"
    Env = "dev"
  }
}

resource "aws_security_group" "web-sg" {
  name_prefix = "web-sg-"
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "instance_public_ip" {
  description = "IP publique de l'instance EC2"
  value       = aws_instance.ubuntu-2204.public_ip
}
=======
  tags = {
    Name = "my-first-ubuntu-server"
    Env = "dev"
  }
}

>>>>>>> 5f55a51 (First commit)

