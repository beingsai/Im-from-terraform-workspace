terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1" # Change if needed
}

resource "aws_instance" "demo" {
  ami           = "ami-02a2af70a66af6dfb
  instance_type = "t2.micro"

  tags = {
    Name = "demo-ec2"
  }
}
