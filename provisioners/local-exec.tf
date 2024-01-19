# local-exec provisioners allows us to invoke a local executable after the resouce is created. This command will run in the laptop or in the workstation where you are ececuting terraform

resource "aws_instance" "nginixserver" {
  ami           = ""
  instance_type = ""
  key_name      = "key"

  provisioner "local-exec" {
    command = "echo ${aws_instance.nginixserver.private_ip} >> private_ips.txt"
  }
}