resource aws_cloudformation_stack cloud_aware {
  name         = "CloudAwareApp"
  capabilities = ["CAPABILITY_NAMED_IAM"]
  parameters = {
    AccessExternalId                 = var.cloudaware_id
    PolicyCloudAwareMonitoringStatus = "Enabled"
    AccessRoleName                   = "CloudAware" # This will potentially prevent cross-region
    AccessRoleArn                    = "CloudAware.aws" # This isn't an ARN but it's the value we've been instructed to provide
  }


  template_body = file("${path.module}/templates/cloudaware.json")
}
