resource "aws_security_group" "test" {
      name = "test"
      description = "test1"

      ingress {
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_blocks = ["0.0.0.0/0"]
            from_port = 443
            to_port = 443
            cidr_blocks =["192.168.1.21/32"]
      }
}
