module "catalogue" {
  source = "../terraform-ec2-instance"
  instance_type = "t2.micro"
  ami_id =  "ami-0220d79f3f480ecf5"

}

output "pub_ip" {
  value = module.catalogue.public_ip
}

output "priv_ip" {
  value = module.catalogue.private_ip
}
output "isntance_id" {
  value = module.catalogue.instance_id
}
