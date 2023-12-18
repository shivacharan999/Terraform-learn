data "aws_ami" "ami" {
    most_recent = true
    name_regex  = "Centos-8-Devops-Practice"
    owwner   =  ["290972336566"]
}


resource "aws_instance" "ec2" {
    ami      = data.aws_ami.ami.image_id
    instance_type  = var.instance_type
    vpc_security_group_ids = [var.sg_id]
    tags = {
        Name = var.component
    }
}


variable "component" {}
variable "instance_type" {}
variable "sg_id" {}