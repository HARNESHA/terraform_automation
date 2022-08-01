# resource "aws_instance" "server" {

#   instance_type = var.instance_type

#   ami = var.ami_id

#   root_block_device {
#     delete_on_termination = true
#     encrypted             = true
#     tags = {
#       Name        = "${var.project_name}_server_volume"
#       volume_size = var.volume_size
#     }
#   }


#   subnet_id              = var.subnet_id
#   vpc_security_group_ids = var.vpc_security_group_ids

#   tags = {
#     Name = "${var.project_name}_server"
#   }

#   key_name = "cloud_user"
# }