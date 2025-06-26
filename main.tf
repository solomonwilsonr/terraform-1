provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "example_sg" {
  name        = "example-sg"
  description = "Example security group"
  vpc_id      = "vpc-0d2fbffad834b663c"  # Replace with your actual VPC ID

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

  tags = {
    Name = "ExampleSG"
  }
}
