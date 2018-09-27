resource "aws_alb" "galeb-aws-be8" {
    idle_timeout    = 
    internal        = true
    name            = "galeb-aws-be8"
    security_groups = []
    subnets         = ["subnet-a72530ff", "subnet-48898b2f"]

    enable_deletion_protection = false

    tags {
    }
}

