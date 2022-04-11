resource "aws_eip" "eip" {
  tags = {
    Name        = "${var.cluster_name}-eip"
    Environment = var.env
  }
}