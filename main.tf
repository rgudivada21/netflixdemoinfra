provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0ecb62995f68bb549"
instance_type = "t2.medium"
key_name = "argocd"
vpc_security_group_ids = ["sg-0e7e797ed82762c87"]
tags = {
Name = var.instance_names[count.index]
}
}
