resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name        = "${var.cluster_name}-igw"
    Environment = var.env
  }
}