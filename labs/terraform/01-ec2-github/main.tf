terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.30.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "default"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0230bd60aa48260c6"
  instance_type = "t2.micro"
  key_name      = "curso-devops"

  tags = {
    Name = "tf-example"
  }
}

resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "carlostissera-curso-devops-2023"
}

