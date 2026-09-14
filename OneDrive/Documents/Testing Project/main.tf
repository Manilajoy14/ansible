data "aws_security_group" "test"{
      filter{
      name = "group-name"
      values = ["test"]
      } 
}

resource "aws_security_group_rule" "allowinbound"{
      lifecycle {
            prevent_destroy = true
      }

      type = "ingress"
      from_port = 443
      to_port = 443
      protocol = "tcp"
      cidr_blocks = var.allowinbound
      security_group_id = data.aws_security_group.test.id
}

