# which feature in terraform is used to implement the standard resource lifecycle but takes no further actions : NULL RESOURCE

provider "aws" {
  region     = "ap-southeast-1"
  access_key = "YOUR-KEY"
  secret_key = "YOUR-KEY"
}

resource "aws_eip" "lb" {
  depends_on = [null_resource.health_check]
}


resource "null_resource" "health_check" {

 provisioner "local-exec" {

    command = "curl https://google.com"
  }
}