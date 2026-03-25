resource "aws_instance" "terraform" {
      #  for_each = var.instances
    for_each = toset[(var.instances)]
    #when you use for_each with set 
    # {
#   "mongodb"  = "mongodb"
#   "rabbitmq" = "rabbitmq"
# }
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
      #  Name = each.key
        Name = each.value
        Terraform = "true"
    }
}

resource "aws_security_group" "allow_all" {
  name   = "allow-all"

  egress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  ingress {
    from_port        = 0 # from port 0 to to port 0 means all ports
    to_port          = 0 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = ["0.0.0.0/0"] # internet
  }

  tags = {
    Name = "allow-all"
  }

}


# variable "instances" {
#   default = ["mongodb", "rabbitmq", "frontend"]
# }

# resource "aws_instance" "example" {
#   for_each = toset(var.instances)

#   tags = {
#     Name = each.value
#   }
# }