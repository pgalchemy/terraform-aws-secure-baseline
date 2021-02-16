# --------------------------------------------------------------------------------------------------
# Limit Monitor Baseline
# Only deployed to us-east-1
# This is an extra configuration which is not included in CIS benchmark.
# --------------------------------------------------------------------------------------------------
module "limitmonitor_baseline_us-east-1" {
  source = "./modules/limitmonitor-baseline"
  providers = {
    aws = aws.us-east-1
  }
}
