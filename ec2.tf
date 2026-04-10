resource "aws_instance" "demo" {
  ami           = "ami-0a914de4dc1f18727"
  instance_type = "t3.micro"
  subnet_id     = "subnet-0a1fe37a529b8e1a8"
  vpc_security_group_ids = ["sg-04f30008f83315ad5"]
   associate_public_ip_address = false
     key_name             = "2026ctskeyfordemoaccount"
  iam_instance_profile = "SSM-automation-patching-role"

  tags = {
    Name = "terraform-demo-private-ec2"
}

}
output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.demo.id
}

output "private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.demo.private_ip
}

output "private_dns" {
  description = "Private DNS name of the EC2 instance"
  value       = aws_instance.demo.private_dns
}
