provider "aws" {
  region = "us-east-1"
}
module "ec2" {
  source = "../terraform-ec2"
}
module "rds" {
  source = "../terraform-rds"
}