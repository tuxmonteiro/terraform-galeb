provider "aws" {
  alias  = "sa"
  region = "sa-east-1"
}

terraform {
  backend "s3" {
    region = "sa-east-1"
    bucket = "apikeys-galeb-1538023361"
    key    = "terraform.tfstate"
  }
}
