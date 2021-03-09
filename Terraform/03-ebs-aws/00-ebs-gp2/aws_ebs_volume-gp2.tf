variable "region" {
  description = "region"
  type        = string
  default     = "sa-east-1"
}

provider "aws" {
  region = var.region
}

resource "aws_ebs_volume" "ebs-volumen" {
  availability_zone = "sa-east-1a"
  size              = 8
  type              = "gp2"

  tags = {
    Name = "ebs-volumen-kubernetes"
  }
}
