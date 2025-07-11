/*
terraform {
  cloud {

    organization = "TERRAFORM_LEARN668"

    workspaces {
      name = "LEARN668_CLI"
    }
  }
}
*/


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "us-west-2"
}

/*
# Create a VPC
resource "aws_vpc" "peer" {
  cidr_block = "10.1.0.0/16"
}
*/

/*
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}
resource "aws_instance" "main" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  tags = {
    Name = "myfirstvm"
  }
}
*/
