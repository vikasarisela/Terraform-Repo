variable "instances" {
  default = ["mongodb", "rabbitmq"]

#  default = {
#     mongodb = "t3.micro"
#     redis = "t2.small"
#  }
   # default = {
#      mongodb = {
#       instance_type = "t2.micro"
#       ami = "ami-id"
#      }
#      redis = {
#       instance_type = "t3.micro"
#       ami = "ami-di"
#      }
#    }
#    each.value.instance_type
# }
}
variable "domain_name" {
  default = "cloudskills.fun"
}

variable "zone_id" {
  default = "Z026569833PO0BSJDM4X5"
}