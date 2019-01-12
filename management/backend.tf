terraform {
  backend "s3" {
    encrypt = "false"
    bucket  = "crypto-resources-terraform-israel"
    key     = "management/terraform.tfstate"
    region  = "us-east-2"
    profile = "CryptoArb"
  }
}
