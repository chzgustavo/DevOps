terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      //version = "~> 2.70" // si no especifico descargar la ultima version
    }
  }
}

provider "aws" {
  region = "sa-east-1"
}
