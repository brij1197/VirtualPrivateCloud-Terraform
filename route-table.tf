resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "CYBERSECURITY_ROUTE"
  }
}

#Routing table for NAT gateway
resource "aws_route_table" "route_table_private" {
  vpc_id = aws_vpc.main.id
  route{
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat_gw.id
  }
  tags = {
    Name = "CYBERSECURITY_ROUTE_PRIV"
  }
}