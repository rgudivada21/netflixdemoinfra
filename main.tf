provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "one" {
  count                  = 4
  ami                    = "ami-02b8269d5e85954ef"
  instance_type          = "t2.medium"
  key_name               = "Netflix"
  vpc_security_group_ids = ["vpc-01611e9bacbbaa3a8"]"
  subnet_id              = ["subnet-02695137319a673b2"]
  tags = {
    Name = var.instance_names[count.index]
  }
}

variable "instance_names" {
  default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
