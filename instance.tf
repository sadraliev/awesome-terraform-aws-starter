
resource "aws_security_group" "network-security-group" {
  name        = var.network-security-group-name
  description = "Allow http inbound traffic"


  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

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
    Name = "tf-nsg"
  }
}


resource "aws_instance" "ubuntu-vm-instance" {
  instance_type          = var.ubuntu-instance-type
  ami                    = var.ami
  key_name               = aws_key_pair.key_pair.key_name
  vpc_security_group_ids = [aws_security_group.network-security-group.id]
  user_data              = file("initial.script.sh")
  tags = {
    Name = "tf-ubuntu-vm"
  }
}
