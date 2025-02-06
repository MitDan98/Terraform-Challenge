module "aws_infra" {
  source    = "./aws_infra"
  env       = var.env
  region    = var.region
}
