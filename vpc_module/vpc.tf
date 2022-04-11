resource "aws_vpc" "vpc" {
  cidr_block = var.cidr
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name                                        = "${var.cluster_name}-vpc"
    Environment                                 = var.env
    "kubernetes.io/cluster/${var.cluster_name}" = "shared"
  }
}
