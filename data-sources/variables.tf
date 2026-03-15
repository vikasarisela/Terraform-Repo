variable "instances" {
  default = ["mongodb", "rabbitmq","frontend"]
}

variable "domain_name" {
  default = "cloudskills.fun"
}

variable "zone_id" {
  default = "Z026569833PO0BSJDM4X5"
}