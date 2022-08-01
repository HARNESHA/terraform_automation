resource "aws_cloudwatch_metric_alarm" "StatusCheckFailed_System" {
  alarm_actions       = ["arn:aws:automate:${var.region}:ec2:reboot"]
  alarm_description   = "${var.project_name}_server_${var.instance_id}_StatusCheckFailed_System"
  alarm_name          = "${var.project_name}_server_${var.instance_id}_StatusCheckFailed_System"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 2
  dimensions = {
    InstanceId = var.instance_id
  }
  evaluation_periods = 2
  metric_name        = "StatusCheckFailed_System"
  namespace          = "AWS/EC2"
  period             = 60
  statistic          = "Average"
  threshold          = 1
  treat_missing_data = "notBreaching"
}

resource "aws_cloudwatch_metric_alarm" "StatusCheckFailed_Instance" {
  alarm_actions       = ["arn:aws:automate:${var.region}:ec2:reboot"]
  alarm_description   = "${var.project_name}_server_${var.instance_id}_StatusCheckFailed_Instance"
  alarm_name          = "${var.project_name}_server_${var.instance_id}_StatusCheckFailed_Instance"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 2
  dimensions = {
    InstanceId = var.instance_id
  }
  evaluation_periods = 2
  metric_name        = "StatusCheckFailed_System"
  namespace          = "AWS/EC2"
  period             = 60
  statistic          = "Average"
  threshold          = 1
  treat_missing_data = "notBreaching"
}

variable "instance_id" {
    type = string
    description = "specifiy the instance"
}

variable "project_name" {
  type = string
  description = "provide project name"
}

variable "region" {
  type = string
  description = "specify region for cloud watch alarm"
}