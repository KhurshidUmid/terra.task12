resource "aws_iam_policy" "existing_policy" {
  name = "cmtr-xv69vdlr-iam-policy"

  # 1. ADD THIS LINE to match the imported description
  description = "Custom role with limited permissions"

  # 2. UPDATE THE POLICY JSON to match the imported policy
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:*", # This must match the state
          "s3:*"   # This must match the state
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}
