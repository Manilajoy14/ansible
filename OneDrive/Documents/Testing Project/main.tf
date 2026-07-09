resource "aws_security_group" "example_sg" {
  name        = "example-security-group"
  description = "Security group for web server"
  vpc_id      = "vpc-xxxxxxxx"   # Replace with your VPC ID

  # Inbound rules
  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["10.141.2.1/32"]
  }
}