# resource "aws_route53_record" "roboshop" {
#   count = 2
#   zone_id = "${var.zone_id}"
#   name    = "${var.instances[count.index]}.${var.domain_name}"
#   type    = "A"
#   ttl     = 1

#   if name == "frontend.cloudskills.fun"
#   {
#   records = [aws_instances.terraform[count.index].private_ip]
# } else
# {
#     records = [aws_instances.terraform[count.index].private_ip]

# }
#   allow_overwrite = true
# }

resource "aws_route53_record" "roboshop" {
  count   = length(var.instances)
  zone_id = var.zone_id
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1

  records = var.instances[count.index] == "frontend" ? [aws_instance.terraform[count.index].public_ip] : [aws_instance.terraform[count.index].private_ip]

  allow_overwrite = true
}
# aws_instance.terraform[count.index].public_ip is a computed attribute, which means:

# 👉 It is NOT known before Terraform creates the EC2 instance
# 👉 It becomes available only after terraform apply