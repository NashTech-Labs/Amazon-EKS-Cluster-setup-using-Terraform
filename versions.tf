terraform {
  required_version = ">=1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=3.40.0"
    }
  }

  # Update your statefile stroing location here

  # backend "s3" {
  #   bucket = "terraform-statefile"
  #   key    = "terraform.tfstate"
  #   region = "us-east-1"
  # }
}

provider "aws" {
  region = "us-east-1"
}