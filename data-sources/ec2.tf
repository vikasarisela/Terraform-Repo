resource "aws_instance" "terraform" {
    count = length(var.instances)
    ami = data.aws_ami.amidata.id
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
        Name = var.instances[count.index]
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


# data "aws_instance" "foo" {
#   instance_id = "i-instanceid"

# }

# output "aws_instance_foo" {
#   value = data.aws_instance.foo.public_ip
# }