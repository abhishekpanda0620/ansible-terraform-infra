provider "aws" {
  region = "us-east-1"
}



resource "aws_security_group" "web_sg" {
  name        = "tiny-web-sg"
  description = "Allow HTTP & SSH"

  ingress {
    description = "SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["106.215.147.31/32"]
  }

  ingress {
    description = "HTTP from anywhere"
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

  tags = {
    Name = "tiny-web-sg"
  }
}

resource "aws_instance" "web" {
  ami                    = "ami-08c40ec9ead489470"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  key_name = var.key_name
  tags = { Name = "tiny-web" }

}

output "public_ip" {
  value = aws_instance.web.public_ip
}
