data "aws_security_group" "test"{
      filter = "test"
      value = "test"
}

resource "aws_security_group_rule" "inbound"{
      type = "ingress"
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = [
      "192.168.1.2/32", 
      "192.168.1.43/32"
      ]
      security_group_id = data.aws_security_group.test.id
}

