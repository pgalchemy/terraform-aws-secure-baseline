resource "random_uuid" "external_id" {}

resource "aws_cloudformation_stack" "prisma" {
  name         = "PrismaCloudApp"
  capabilities = ["CAPABILITY_NAMED_IAM"]
  parameters = {
    ExternalID          = random_uuid.external_id.result
    PrismaCloudRoleName = "PrismaCloudReadOnlyRole"
  }


  template_body = file("${path.module}/templates/prisma.yaml")
}
