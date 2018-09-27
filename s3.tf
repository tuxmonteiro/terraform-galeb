provider "aws" {
	alias  = "sa"
	region = "sa-east-1"
}

resource "aws_s3_bucket" "apikeys-galeb-1538023361" {
    provider = "aws.sa"
    bucket   = "apikeys-galeb-1538023361"
    acl      = "private"
}

