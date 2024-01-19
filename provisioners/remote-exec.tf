# If we get bad permission in windows for key: right click on pem go to properties >> security >> advance >> disbale inheritance and remove other users
# in mac or linux : chmod 400 pemkey name
# using remote exec provisioner launch EC2 instance and install ngnix
# https://developer.hashicorp.com/terraform/language/resources/provisioners/remote-exec
# https://developer.hashicorp.com/terraform/language/resources/provisioners/connection
# Check security group for port 22 & port 80


provider "aws" {

}

resource "aws_instance" "nginixserver" {
  ami           = ""
  instance_type = ""
  key_name      = "key"

  connection {
    type        = "ssh"  # type of connection #
    user        = "root" # Depends on the operating system users will change ec2-user,ubuntu #
    private_key = file("./key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" { # Commands that need to run once instance launch #
    inline = [
      "sudo amazon-linux-extras install -y ngnix1", # -y helps when prompt comes, it automates
      "sudo systemctl start ngnix"
    ]
  }
}