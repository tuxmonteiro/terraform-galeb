resource "aws_cloudwatch_metric_alarm" "GalebTcpResetFromTargets" {
    alarm_name          = "GalebTcpResetFromTargets"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = "1"
    metric_name         = "TCP_Target_Reset_Count"
    namespace           = "AWS/NetworkELB"
    period              = "300"
    statistic           = "Average"
    threshold           = "150.0"
    alarm_description   = ""
    alarm_actions       = ["arn:aws:autoscaling:sa-east-1:185565106143:scalingPolicy:2a7e82c7-f20b-416a-8d7e-4b4761e4eb13:autoScalingGroupName/galeb-as-dev-01:policyName/galebCpuAvgUp"]
    dimensions {
        LoadBalancer = "net/galeb-aws-be8/7ed4f89cf35fff3e"
    }
}

resource "aws_cloudwatch_metric_alarm" "awsec2-galeb-as-dev-01-High-CPU-Utilization" {
    alarm_name          = "awsec2-galeb-as-dev-01-High-CPU-Utilization"
    comparison_operator = "GreaterThanOrEqualToThreshold"
    evaluation_periods  = "1"
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = "60"
    statistic           = "Average"
    threshold           = "80.0"
    alarm_description   = ""
    alarm_actions       = ["arn:aws:autoscaling:sa-east-1:185565106143:scalingPolicy:2a7e82c7-f20b-416a-8d7e-4b4761e4eb13:autoScalingGroupName/galeb-as-dev-01:policyName/galebCpuAvgUp"]
    dimensions {
        AutoScalingGroupName = "galeb-as-dev-01"
    }
}

resource "aws_cloudwatch_metric_alarm" "awsec2-galeb-as-dev-01-Low-CPU-Utilization" {
    alarm_name          = "awsec2-galeb-as-dev-01-Low-CPU-Utilization"
    comparison_operator = "LessThanOrEqualToThreshold"
    evaluation_periods  = "1"
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = "60"
    statistic           = "Average"
    threshold           = "30.0"
    alarm_description   = ""
    ok_actions          = ["arn:aws:autoscaling:sa-east-1:185565106143:scalingPolicy:f7dcc8d6-cccb-468f-8276-d7082a0ddecb:autoScalingGroupName/galeb-as-dev-01:policyName/galebCpuAvgDown"]
    dimensions {
        AutoScalingGroupName = "galeb-as-dev-01"
    }
}

