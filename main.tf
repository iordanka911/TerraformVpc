terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

}

provider "aws" {
  region = var.region
}

resource "aws_instance" "DB" {
  ami           = "ami-09c5ba4f838d8684a"
  instance_type = "t2.micro"

  tags = {
    Name = "DB"
  }
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  name   = "yordanka-project-vpc"
  cidr   = var.cidr

  azs             = var.availabilityZones
  private_subnets = var.privateSubnets
  public_subnets  = var.publicSubnets

  enable_nat_gateway = "true"

  tags = {
    Terraform   = "True"
    Environment = "Dev"
  }
}

