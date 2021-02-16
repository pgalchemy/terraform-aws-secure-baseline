# --------------------------------------------------------------------------------------------------
# P&G Baselines
# Needs to be set up in each region.
# This is an extra configuration which is not included in CIS benchmark.
# --------------------------------------------------------------------------------------------------
module "prismacloud_baseline_us-east-1" {
  source = "./modules/prisma-baseline"

  providers = {
    aws = aws.us-east-1
  }
}

module "cloudaware_baseline_us-east-1" {
  source = "./modules/cloudaware-baseline"

  providers = {
    aws = aws.us-east-1
  }
}
