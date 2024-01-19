/*provider "aws" {
    shared_config_files = ["/User/tf_user/.aws/config"]
    shared_credentials_files =  ["/User/tf_user/aws/creds"]
    profile = "customprofile"    
}
# this is not better approach as sharedfile might not be used all the teams as same, In larger organization
resource "aws_eip" "lb" {
    domain = "vpc"
}*/

resource "aws_iam_user" "saidemouser" {
  name = "terraform-certificate-user"
}