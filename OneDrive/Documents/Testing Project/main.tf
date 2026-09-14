resource "aws_security_group" "test" {
      name = "test"
      description = "test1"
}

resource "aws_security_group_rule" "inbound"{
      type = "ingress"
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["192.168.1.2/32"]
      security_group_id = aws_security_group.test.id
}
