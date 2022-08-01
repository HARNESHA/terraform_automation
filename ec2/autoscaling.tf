resource "aws_launch_template" "foo" {
  name = "${var.project_name}_server_template"

  block_device_mappings {
    device_name = "/dev/sda1"

    ebs {
      volume_size = var.volume_size
    }
  }

  image_id = var.ami_id

  instance_type = var.instance_type

  key_name = var.key_name

  vpc_security_group_ids = var.vpc_security_group_ids

  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "${var.project_name}_server"
    }
  }
}

resource "aws_autoscaling_group" "bar" {
  name                = "${var.project_name}_server_autoscaling_group"
  vpc_zone_identifier = var.vpc_zone_identifier
  # availability_zones  = var.availability_zones
  desired_capacity    = var.desired_capacity
  max_size            = var.max_size
  min_size            = var.min_size

  launch_template {
    id      = aws_launch_template.foo.id
    version = "$Latest"
  }
}

