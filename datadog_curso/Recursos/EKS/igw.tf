resource "aws_internet_gateway" "datadog-igw" {
  vpc_id = aws_vpc.datadog_vpc.id
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.datadog_vpc.id
}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.datadog-igw.id
}

resource "aws_route_table_association" "public_association" {
  count          = 2
  subnet_id      = aws_subnet.public[count.index].id
  route_table_id = aws_route_table.public.id
}
