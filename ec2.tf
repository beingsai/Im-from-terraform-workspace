resource "aws_instance" "demo" {
  ami           = "ami-0a914de4dc1f18727"
  instance_type = "t2.micro"
  }
