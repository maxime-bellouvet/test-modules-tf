terraform {
  required_version = ">= 0.12, < 0.13"
}

resource "aws_instance" "ec2-jenkins-slave" {
  ami             = var.AMI
  instance_type   = var.INSTANCE_TYPE
  key_name        = var.KEYPAIR_NAME
  subnet_id       = var.SUBNETID
  vpc_security_group_ids = [var.SECURITYGROUP]
  tags = {
    Name = "Hello world by CICD 17072020"
  }
}
