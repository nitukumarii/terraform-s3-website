provider "aws" {
    profile = "myproject-dev" # Replace "default" with your AWS CLI profile name
    region  = "us-east-1" # Replace with your desired AWS region
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.96"
    }
  }
}