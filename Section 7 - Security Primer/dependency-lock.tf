# Provider Plugins and Terraform are managed independently and have different release cycle. 
# Version constraints within the configuration itself determine which version of dependencies are potentially compatible. the version will be fixed on .terraform.lock.hcl file
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}



resource "aws_instance" "web" {
  ami           = ami-123
  instance_type = "t2.micro"
}


# What happends if you update the TF file with version that doesnot match the terraform.lock.hcl

# "-Resuing pervious version of hashicorp/aws from the dependency lock file
#  Error: failed to query available provider packages
#  Could not retrieve the list of avaibable version for provider hashicorp/aws: Locked provider registry.terraform.io/hashicorp/aws .. does not match the configured version constraint ....; must use terraform init -upgrade to allow selection of new versions"

# ******* terraform init -upgrade ******* commands help to resolve 
# ** At present, the dependency lock file tracks only provider dependencies.