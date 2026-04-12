module "vpc" {
  source = "../terraform-vpc"
  cidr_block = "10.0.0.0/16"
  project_name = "Roboshop"
  environment = "dev"
  public_subnet_cidr =   ["10.0.1.0/24","10.0.2.0/24"]
  private_subnet_cidr =  ["10.0.11.0/24","10.0.12.0/24"]
  database_subnet_cidr = ["10.0.21.0/24","10.0.22.0/24"]
}

# output "azs" {
#   value = data.aws_availability_zones.available.names
# }