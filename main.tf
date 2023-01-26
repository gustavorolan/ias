terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app-server" {
  ami           = "ami-095413544ce52437d"
  instance_type = "t2.micro"
  key_name      = "oficial"
  #  user_data     = <<-EOF
  #   #!/bin/bash
  #  cd home/ubuntu
  # echo "<h1> hello world feito com terraform <h1/> " > index.html
  #nohup busybox httpd -f -p 8080 &
  #EOF
  tags = {
    Name = "Teste aws 2"
  }
}
