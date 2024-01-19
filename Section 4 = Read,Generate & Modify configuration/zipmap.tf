# Zipmap constructs a map from a list of keys and a corresponding list of values 
# High level syntax # : zipmap(keyslist, valueslist)
# use case: creating multiple IAM users, we need output which contains direct mapping of IAM names and ARNs

provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

# zipmap(["pineapple","oranges","strawberry"], ["yellow","orange","red"])

resource "aws_iam_user" "lb" {
  name = "demo-user.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}

output "name" {
    value = aws_iam_user.lb[*].name
}

output "combined" {
    value = zipmap(aws_iam_user.lb[*].name,aws_iam_user.lb[*].arn)
  
}


/*output "zipmap" {
  value = zipmap(aws_iam_user.lb[*].name, aws_iam_user.lb[*].arn)
}*/