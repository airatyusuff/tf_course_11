terraform {
  cloud {
    organization = "airahyusuff"
    workspaces {
      name = "tf_associate_course"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.01"
    }
  }
}

# Variable blocks directly within the main.tf. No arguments necessary.
# variable "aws_access_key" {}
# variable "aws_secret_key" {}
variable "AWS_REGION" {}

# provider arguments call on the variables which then call on terraform.tfvars for the values.
provider "aws" {
  # access_key = var.aws_access_key
  # secret_key = var.aws_secret_key
  region = var.AWS_REGION
}

# Add .gitignore file in this directory with the terraform.tfvars
# resource "aws_instance" "tc_instance" {
#   ami           = "ami-0c7c4e3c6b4941f0f"
#   instance_type = "t2.micro"

#   tags = {
#     Name = "HCP-Terraform-triggered-instance"
#   }
# }

# resource "aws_iam_user" "test_user_99" {
#   name = "test-user-99"
# }