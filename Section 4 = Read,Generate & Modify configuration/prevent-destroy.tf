# Base code
/*
provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }
}*/

# Prevent-destroy final code
provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "myec2" {
    ami = "ami-0f34c5ae932e6f0e4"
    instance_type = "t2.micro"

    tags = {
        Name = "HelloEarth"
    }

    lifecycle {
      prevent_destroy = true
    }
}

# Note: This can be used as a measure of safety against the accidental replacement of objects that may be costly to reproduce such as database instances
#       since this argument must be present in the configuration for the protection to apply that this setting does not prevent remote objects from being destroyed if the resource block were removed from the configuration entire 