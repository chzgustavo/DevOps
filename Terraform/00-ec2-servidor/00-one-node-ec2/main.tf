data "aws_availability_zones" "all" {}

resource "aws_instance" "example" {
  ami                    = "ami-01eb71e14cef400e2"
  instance_type          = "t2.micro"
  key_name = "EC2 Tutorial"
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data     = <<-EOF
                  #!/bin/bash
                  sudo su
                  yum update -y
                  yum install -y httpd.x86_64
                  systemctl start httpd.service
                  systemctl enable httpd.service
                  echo "Hello World from $(hostname -f)" > /var/www/html/index.html
                  EOF

  tags = {
    Name = "terraform-example"
  }
}

resource "aws_security_group" "instance" {
  name        = "terraform-example-instance"
  description = "ingress generales"

  ingress {
    from_port   = var.port2
    to_port     = var.port2
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = var.port1
    to_port     = var.port1
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = var.port3
    to_port     = var.port3
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
