provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c71c99"   # Amazon Linux 2
  instance_type = "t3.micro"
  tags = { Name = "tiny-web" }
}

output "public_ip" {
  value = aws_instance.web.public_ip
}
