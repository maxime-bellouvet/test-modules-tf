terraform {
  required_version = ">= 0.12, < 0.13"
}

resource "aws_instance" "server1" {
   ami           = "ami-045fa58af83eb0ff4"
   instance_type = "t2.micro"
   key_name      = "admin"
 }
