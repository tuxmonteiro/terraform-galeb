resource "aws_autoscaling_group" "galeb-as-dev-01" {
    desired_capacity          = 0
    health_check_grace_period = 30
    health_check_type         = "EC2"
    max_size                  = 1
    min_size                  = 0
    name                      = "galeb-as-dev-01"
    vpc_zone_identifier       = ["subnet-48898b2f"]
    launch_template = {
      id = "${aws_launch_template.galeb_template.id}"
      version = "$$Latest"
    }

}

