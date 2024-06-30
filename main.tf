provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-01b799c439fd5516a"
  instance_type = "t2.micro"
}

output "instance_id" {
  value = aws_instance.my_instance.id
}

output "public_ip" {
  value = aws_instance.my_instance.public_ip
}