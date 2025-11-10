provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0ecb62995f68bb549"
instance_type = "c7i-flex.large"
key_name = "argocd"
vpc_security_group_ids = ["sg-0e7e797ed82762c87"]
tags = {
Name = var.instance_names[count.index]
}
}
variable "instance_names" {
default = ["jenkins", "APPSERVER-1", "APPSERVER-2", "Monitoring server"]
}

