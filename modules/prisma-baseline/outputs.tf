output external_id {
  value = random_uuid.external_id.result
}

output role_arn {
  value = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/PrismaCloudReadOnlyRole"
}
