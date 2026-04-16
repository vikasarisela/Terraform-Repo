output "public_subnet_idss" {
  value = module.vpc.public_subnet_ids
}


output "private_subnet_idss" {
  value = module.vpc.private_subnet_ids
}

output "database_subnet_idss" {
  value = module.vpc.database_subnet_ids
}