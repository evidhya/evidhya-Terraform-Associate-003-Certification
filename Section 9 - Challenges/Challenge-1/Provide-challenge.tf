provider "aws" {
  # version = "~> 2.54"
  region     = "us-east-1"
  access_key = "****************"
  secret_key = "***********************"
}

provider "digitalocean" {}

terraform {
  required_version = "0.12.31"
}

resource "aws_eip" "aspire_ip" {
  # vpc = true
}


# solution code
#1. download the older version of terraform 0.12.31 (releases.hashicorp.com)
# If you are in specific folder like challenge 1 you can copy or download the older vesion of exe in the folder and run terraform.exe init
# remove the access key and secret key which are expose. this can be resovled by using asw cli 
# aws configure add the details and enter

# vpc = true Warning: Argument is deprecated * Since argument is deprecated, it can happen that apply will fail in the future version of AWS Provider 
# Never get depcrecated waring 
/*
provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
  }
}

resource "aws_eip" "aspire_ip" {
  domain = "vpc"
}
*/
 