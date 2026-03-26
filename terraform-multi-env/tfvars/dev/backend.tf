    bucket = "remote-state-multi-dev"
    key    = "tfvars-multi-dev-demo"
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  
# Terraform init -backend-config=dev/backend.tf 
# it initialized
# to call .tfvars variables during plan
#Terraform plan -var-file=dev/dev.tfvars
# Terraform apply -auto-approve -var-file=dev/dev.tfvars

# to run in prod 
# Terraform init -backend-config=dev/backend.tf  -reconfigure
#now tfstate points to prod bucket
# #Terraform plan -var-file=prod/prod.tfvars

# change the pointing to destroy 
# Terraform init -backend-config=dev/backend.tf 
# Terraform destroy -auto-approve  -var-file=dev/dev.tfvars


