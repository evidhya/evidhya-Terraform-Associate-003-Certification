terraform {
  backend "s3" {
    bucket = "xxxxxxxxxxxxxxxxxxxxxx"  # bucket name 
    key    = "network/terraform.tfstate" # folder name/file name which we are backending like terraform.tfstate
    region = "us-east-1"
  }
}