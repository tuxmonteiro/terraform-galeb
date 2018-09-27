resource "aws_iam_policy" "allow-s3-apikeys-galeb-policy" {
    name        = "allow-s3-apikeys-galeb-policy"
    path        = "/"
    description = ""
    policy      = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "VisualEditor0",
      "Effect": "Allow",
      "Action": [
        "s3:ListAllMyBuckets",
        "s3:HeadBucket"
      ],
      "Resource": "*"
    },
    {
      "Sid": "VisualEditor1",
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": [
        "arn:aws:s3:::apikeys-galeb-1538023361",
        "arn:aws:s3:::apikeys-galeb-1538023361/*"
      ]
    }
  ]
}
POLICY
}

