terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
# Configure the Bankend S3
  backend "s3" {
    bucket = "github-action-demo-05"
    key    = "github-action-demo.tfstate"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}