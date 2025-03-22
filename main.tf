provider "aws" {
  access_key                  = "test"
  secret_access_key           = "test"
  region                      = "us-east-1"
  endpoints {
    ec2 = "http://localhost:4566"
  }
}

resource "aws_instance" "example" {
  ami                         = "ami-12345678"
  instance_type               = "t2.micro"
  user_data                   = <<-EOF
    #!/bin/bash
    echo "Creating file1.txt" > /tmp/file1.txt
    echo "Creating file2.txt" > /tmp/file2.txt
    ls /tmp
  EOF
}
