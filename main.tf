# Virtual Private Cloud Module
module "vpc_module" {
  source       = "./vpc_module"
  cluster_name = var.cluster_name
  env          = var.env
}

# Elastic Kubernetes Service Module
module "eks_module" {
  source = "./eks_module"

  cluster_name = var.cluster_name
  env          = var.env

  eks-version = var.eks-version

  vpc_id = module.vpc_module.vpc_id
  cidr   = module.vpc_module.cidr

  public-subnet-1 = module.vpc_module.public-subnet-1
  public-subnet-2 = module.vpc_module.public-subnet-2
  public-subnet-3 = module.vpc_module.public-subnet-3

  private-subnet-1 = module.vpc_module.private-subnet-1
  private-subnet-2 = module.vpc_module.private-subnet-2
  private-subnet-3 = module.vpc_module.private-subnet-3

  instance_type      = var.instance_type
  instance_disk_size = var.instance_disk_size
  capicity_type      = var.capicity_type
  desired_size       = var.desired_size
  max_size           = var.max_size
  min_size           = var.min_size
}
