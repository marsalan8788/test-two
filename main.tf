# Configure the AWS provider
provider "aws" {
  region = "us-east-1" # Update this to your desired region
}

# Create an EC2 instance
resource "aws_instance" "simple_ec2" {
  ami           = "ami-07207a5954220f067" # Update this to the desired AMI
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.simple_sg.id]

  tags = {
    Name = "Simple EC2 Instance"
  }
}

variable "test2" {
  type = bool
}

variable "main" {
  type = bool
}
