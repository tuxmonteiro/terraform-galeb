resource "aws_iam_instance_profile" "ip-allow-s3-apikeys-galeb" {
    name = "ip-allow-s3-apikeys-galeb"
    path = "/"
    role = "allow-s3-apikeys-galeb"
    depends_on = ["role-allow-s3-apikeys-galeb"]
}

