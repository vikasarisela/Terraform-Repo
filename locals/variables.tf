variable "project" {
    default = "roboshop"
}

variable "environment"{
    default = "dev"
}

# you cannot refer one variable in another variable 
# variable "common_name" {
#     default = "${var.project}-${var.environment}"
# }

variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
}

variable "common_tags" {
    type = map
    default = {
    
    Terraform = "true"
    Project = "Roboshop"
    Environment = "dev"
  }
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}
# here the left side are called arguments 
variable "sg_name" {
  type = string
  default = "allow-all"
  description = "Security group name to attach to ec2 instance"
}

variable "cidr" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "ingress_from_port" {
  type = number
  default = 0
}
variable "ingress_to_port" {
  type = number
  default = 0
}
variable "egress_from_port" {
  type = number
  default = 0
}
variable "egress_to_port" {
  type = number
  default = 0
}
variable "protocol" {
  default = "-1"
}