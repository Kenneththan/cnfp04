terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.87.0"
    }
  }
}

# provider "aws" {
#   region = "ap-southeast-1"
#   profile = userdb
# }