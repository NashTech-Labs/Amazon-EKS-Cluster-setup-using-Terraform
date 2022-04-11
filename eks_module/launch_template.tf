resource "aws_launch_template" "lt" {
  name          = format("lt-%s-ng", aws_eks_cluster.eks.name)
  instance_type = var.instance_type

  tags = {
    Name      = format("%s-lt", aws_eks_cluster.eks.name)
    ManagedBy = "terraform"
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name                                        = format("%s-nodegroup", aws_eks_cluster.eks.name)
      "kubernetes.io/cluster/${var.cluster_name}" = "owned"
      ManagedBy                                   = "EKS"
    }
  }

  tag_specifications {
    resource_type = "volume"
    tags = {
      Name                                        = format("%s-nodegroup", aws_eks_cluster.eks.name)
      "kubernetes.io/cluster/${var.cluster_name}" = "owned"
      ManagedBy                                   = "EKS"
    }
  }
}