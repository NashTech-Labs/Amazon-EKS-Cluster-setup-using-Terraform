output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "cidr" {
  value = aws_vpc.vpc.cidr_block
}

output "private-subnet-1" {
  value = aws_subnet.private-subnet.*.id[0]
}

output "private-subnet-2" {
  value = aws_subnet.private-subnet.*.id[1]
}

output "private-subnet-3" {
  value = aws_subnet.private-subnet.*.id[2]
}

output "public-subnet-1" {
  value = aws_subnet.public-subnet.*.id[0]
}

output "public-subnet-2" {
  value = aws_subnet.public-subnet.*.id[1]
}

output "public-subnet-3" {
  value = aws_subnet.public-subnet.*.id[2]
}
