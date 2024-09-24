data "aws_ssm_parameter" "frontend_sg_id" {
    name ="/${var.project_name}/${var.environment}/frontend_sg_id" # we will get this value from security group.
}
data "aws_ssm_parameter" "public_subnet_ids" {
    name ="/${var.project_name}/${var.environment}/public_subnet_ids" # We will get this value from VPC
}

data "aws_ssm_parameter" "vpc_id" {
    name ="/${var.project_name}/${var.environment}/vpc_id" # we will get this value from security group.
}
# data "aws_ssm_parameter" "web_alb_listener_arn_https" {
#     name ="/${var.project_name}/${var.environment}/web_alb_listener_arn_https" # we will get this value from security group.
# }

data "aws_ssm_parameter" "web_alb_listener_arn_https" {
    name ="/${var.project_name}/${var.environment}/web_alb_listener_arn_https" # we will get this value from security group.
}
data "aws_ami" "ami_info" {  # To get ami_id, we can use this data source.

    most_recent = true
    owners = ["973714476881"]

    filter {
        name = "name"
        values = ["RHEL-9-DevOps-Practice"]
        }

    filter {
         name ="root-device-type"
         values = ["ebs"]
        }

    filter {
         name ="virtualization-type"
         values = ["hvm"]
  }
}