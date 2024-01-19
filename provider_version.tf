terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
      # >=1.0 greater than equal to the version
      # <=1.o less than equal to the version
      # ~>2.0 any version in the 2.X region
      # >=2.10,<=2.30 any version between 2.10 and 3.10
    }
  }
}

provider "aws" {}

############# terraform init -upgrade ############### helps to upgrade the version. You can check version in
#### terraform.lock.hcl file