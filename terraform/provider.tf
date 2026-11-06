terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>6.0"
    }
  }
}
<<<<<<< HEAD
provider "aws" {
  region = var.region
=======

provider "aws" {
  region = "var.region"
>>>>>>> 5ce8c675cae77d637a67dccc78f7a6dcc2587df9
}