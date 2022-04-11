resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
  tags = {
    Name        = "${var.cluster_name}-public-rt"
    Environment = var.env
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ng.id
  }

  lifecycle {
    ignore_changes = [route]
  }

  tags = {
    Name        = "${var.cluster_name}-private-rt"
    Environment = var.env
  }
}

resource "aws_route_table_association" "public-rta" {
  count = 3

  subnet_id      = aws_subnet.public-subnet.*.id[count.index]
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "private-rta" {
  count = 3

  subnet_id      = aws_subnet.private-subnet.*.id[count.index]
  route_table_id = aws_route_table.private-rt.id
}

