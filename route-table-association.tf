resource "aws_route_table_association" "routes" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.route_table.id
}

#Associating private route table with the private subnet
resource "aws_route_table_association" "routes_priv" {
  subnet_id = aws_subnet.private.id
  route_table_id = aws_route_table.route_table_private.id
}