# Amazon-EKS-Cluster-setup-using-Terraform

This repo will create the following

    1. VPC with 3 private and 3 public subnet
    2. EKS cluster placed in public subnet to get access from the local machine
    3. Worker node initially-2 placed in private subnet.

## Apply the terraform script

1. First configure the aws credentials using aws-cli

        aws configure

2. Now, from the root directory run the following command to validate the script.

        terraform validate

3. To check the plan for the terraform

        terraform plan

4. Applying the terraform script

        terraform apply
