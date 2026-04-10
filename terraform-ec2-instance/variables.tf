variable "ami_id" {
  type = string

}

variable "instance_type" {
  type = string
  validation {
    condition     = contains(["t2.micro", "t3.micro"], var.instance_type)
    error_message = "Only t2.micro or t3.micro are allowed."
  }
}

variable "ec2_tags" {
  type = map(string)
  default = {
    Name = "terraform-1"
    Terraform = "true"
}
}