provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6GRPIUQWNSKTSFXH"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-067d1e60475437da2"
  instance_type = "t2.micro"
}