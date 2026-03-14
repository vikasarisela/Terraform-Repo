variable "instances" {
 #  default = ["mongodb", "rabbitmq"]
 default = {
    mongodb = "t3.micro"
    redis = "t2.small"
 }
}

variable "domain_name" {
  default = "cloudskills.fun"
}

variable "zone_id" {
  default = "Z026569833PO0BSJDM4X5"
}