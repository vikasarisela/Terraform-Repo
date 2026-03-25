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

#output 
# {
#   mongodb = {}
#   redis = {}
# }

resource "aws_route53_record" "roboshop" {
  for_each = aws_instance.terraform   # output • for_each → map of objects (nested dictionary)
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = 1

  records = [each.value.private_ip]

  allow_overwrite = true
}