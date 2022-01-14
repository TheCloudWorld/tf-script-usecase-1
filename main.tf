module "vpc" {
  source = "../terraform-aws-vpc-module"
}

module "ec2" {
  source = "../terraform-aws-ec2-module"
  instance_type = var.instance_type
  associate_public_ip = var.associate_public_ip
  az = var.az
  depends_on = [
    module.vpc
  ]
}

module "rds" {
  source = "../terraform-aws-rds-module"
  depends_on = [
      module.ec2]
}