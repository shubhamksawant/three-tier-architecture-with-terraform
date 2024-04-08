terraform {
  backend "s3" {
    bucket = "statebucket-three-tier-app"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}