resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "CYBERSECURITY_IGW"
  }
}

#Using NAT gateway for Private Subnet
resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.gat_gw_eip.id
  subnet_id = aws_subnet.public.id
  tags={
    Name="Cyber_NAT"
  }
}