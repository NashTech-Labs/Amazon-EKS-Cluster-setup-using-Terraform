resource "aws_nat_gateway" "ng" {

  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public-subnet.*.id[1]

  tags = {
    Name        = "${var.cluster_name}-ngw"
    Environment = var.env
  }
}
