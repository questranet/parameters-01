terraform {
  backend "s3" {
    bucket = "waleapagun-bucket"
    key    = "parameters-01/terraform.tfstate"
    region = "us-east-1"
  }
}


