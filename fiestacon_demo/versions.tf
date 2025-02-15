terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.69"
    }

    github = {
      source  = "integrations/github"
      version = ">= 4.8"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}