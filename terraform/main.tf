resource "aws_instance" "my_ec2" {
  ami           = var.instance_ami
  instance_type = var.instance_type
<<<<<<< HEAD

  vpc_security_group_ids = [aws_security_group.my_sg.id]

  tags = {
    Name = var.instance_name
  }
  root_block_device {
    volume_size = var.instance_volume_size
    volume_type = var.instance_volume_type
  }
}
resource "aws_security_group" "my_sg" {
  name        = var.security_group_name
  description = "Allow SSH and HTTP access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
=======
  tags = {
    Name = var.instance_name
  }
>>>>>>> 5ce8c675cae77d637a67dccc78f7a6dcc2587df9
}