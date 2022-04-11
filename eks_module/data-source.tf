data "aws_ssm_parameter" "eksami" {
  name = "/aws/service/eks/optimized-ami/${aws_eks_cluster.eks.version}/amazon-linux-2/recommended/image_id"
}