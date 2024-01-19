# Privisioner - failure behaviour : By default, provisioners that fail with all causes the terraform apply itself to fail 
# the on_failure settings can be used to change the values 
# a. continue : ignore the error and continue with creation and destruction. 
# b. fail : raise an error and stop applying (the default behaviour)if this is creation creating provisional taint the resource
# Removed engress rule as the apply fails and the resource is tainted


provider "aws" {
  region     = "ap-southeast-1"
  access_key = "YOUR-KEY"
  secret_key = "YOUR-KEY"
}


resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    description = "SSH into VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "myec2" {
   ami = "ami-0b1e534a4ff9019e0"
   instance_type = "t2.micro"
   key_name = "ec2-key"
   vpc_security_group_ids  = [aws_security_group.allow_ssh.id]

   provisioner "remote-exec" {
     on_failure = continue # Even though the remote-exec provisioner has failed, still we can complete apply
     inline = [
       "sudo yum -y install nano"
     ]
   }
   connection {
     type = "ssh"
     user = "ec2-user"
     private_key = file("./ec2-key.pem")
     host = self.public_ip
   }
}