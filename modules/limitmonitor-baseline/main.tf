# --------------------------------------------------------------------------------------------------
# Must be deployed in us-east-1 but will monitor all regions for account
# https://docs.aws.amazon.com/solutions/latest/limit-monitor/welcome.html
# --------------------------------------------------------------------------------------------------
data aws_caller_identity current {}

data aws_region current {}

resource aws_cloudformation_stack limit_monitor {
  count         = data.aws_caller_identity.current.account_id == var.payer_account ? 0 : 1
  name          = "limit-monitor-sub-account"
  capabilities  = ["CAPABILITY_IAM"]
  template_body = file("${path.module}/templates/limitmonitor.yaml")
  parameters = {
    MasterAccount = var.payer_account
  }
}
