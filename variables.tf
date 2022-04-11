variable "region" {
  default     = "us-east-1"
  type        = string
  description = "AWS region to which the infrastructure need to deploy"
}

variable "cluster_name" {
  default     = "test-eks"
  type        = string
  description = "Name of the EKS cluster"
}

variable "env" {
  default     = "new"
  type        = string
  description = "Environment for the EKS cluster"
}

variable "eks-version" {
  default     = "1.21"
  type        = string
  description = "Version of EKS cluster"
}

variable "instance_type" {
  default = "t3.medium"
  type    = string
}

variable "instance_disk_size" {
  default = 20
  type    = number
}

# capacity type can be two types "ON_DEMAND" and "SPOT"
variable "capicity_type" {
  default = "ON_DEMAND"
  type    = string
}

# desried instance for autoscaling group
variable "desired_size" {
  default = 2
  type    = string
}

# maximum instance size for autoscaling group
variable "max_size" {
  default = 8
  type    = string
}

# minimum instance for autoscaling group
variable "min_size" {
  default = 2
  type    = string
}