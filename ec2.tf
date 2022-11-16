resource "aws_instance" "ubuntu-assignment" {
  ami                         = aws_ami_copy.ubuntu_ami.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public.id
  key_name                    = var.key-name
  associate_public_ip_address = true
  security_groups             = [aws_security_group.cyber_security_group.id]
  tags = {
    Name = "ubuntu_ec2"
  }
}

resource "aws_instance" "ubuntu-assignment-priv" {

  ami                         = aws_ami_copy.ubuntu_ami.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.private.id
  key_name                    = var.key-name
  associate_public_ip_address = false
  security_groups             = [aws_security_group.cyber_security_group_private.id]
  tags = {
    Name = "ubuntu_ec2_private"
  }
}
