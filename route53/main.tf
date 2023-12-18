resource "aws_route53_record" "record" {
  zone_id = "Z050249122YGPFCQEASIN"
  name    = "${var.component}-dev.devsig90.online"
  type    = "A"
  ttl     = 300
  records = [var.private_ip]
}

variable "private_ip" {}

variable "component" {}