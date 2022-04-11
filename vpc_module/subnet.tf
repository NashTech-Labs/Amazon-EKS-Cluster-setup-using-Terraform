resource "aws_subnet" "public-subnet" {
  count                   = 3

  availability_zone       = data.aws_availability_zones.available.names[count.index]
  cidr_block              = "10.101.${count.index}.0/24"
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = true


  tags = {
    Name                                        = "${var.cluster_name}-public-subnet"
    Environment                                 = var.env
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                    = "1"
  }
}

resource "aws_subnet" "private-subnet" {
  count             = 3

  availability_zone = data.aws_availability_zones.available.names[count.index]
  cidr_block        = "10.101.${count.index + 3}.0/24"
  vpc_id            = aws_vpc.vpc.id

  tags = {
    Name                                        = "${var.cluster_name}-private-subnet"
    Environment                                 = var.env
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"           = "1"
  }
}