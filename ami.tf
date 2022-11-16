data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_ami_copy" "ubuntu_ami" {
  name              = "ubuntu-ami"
  description       = "An AMI for Ubuntu 18.04"
  source_ami_id     = data.aws_ami.ubuntu.id
  source_ami_region = var.region

  tags = {
    Name = "Ubuntu AMI"
  }
}
