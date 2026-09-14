resource "aws_security_group" "test"{
      name = "test"
      description = "test1"
}

resource "aws_security_group_rule" "allow"{
      type = "ingress"
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = ["192.168.1.1/32"]
      security_group_id = aws_security_group.test.id
}

resource "aws_security_group" "test"{
      name = "test"
      description = "test1"
}

resource "aws_security_group_rule" "allow"{
      type = "ingress"
      from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["192.168.1.1/32"]
      security_group_id = aws_security_group.test.id
}