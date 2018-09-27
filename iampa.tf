resource "aws_iam_policy_attachment" "allow-s3-apikeys-galeb-policy-policy-attachment" {
    name       = "allow-s3-apikeys-galeb-policy-policy-attachment"
    policy_arn = "arn:aws:iam::185565106143:policy/allow-s3-apikeys-galeb-policy"
    groups     = []
    users      = []
    roles      = ["allow-s3-apikeys-galeb"]
}

