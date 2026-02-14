
resource "aws_instance" "web" {
  ami           = "ami-0c1fe732b5494dc14" # Amazon Linux 2 AMI (update per region)
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.public.id
  security_groups = [aws_security_group.web_sg.id]
  key_name      = "aws-devops-keypair"

  tags = {
    Name = "Terraform-EC2"
  }
}