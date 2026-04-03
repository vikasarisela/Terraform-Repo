terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket = "remote-state-86s-vikas"
    key    = "worskpace-demo"   # state file creates in s3 bucket 
    region = "us-east-1"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}

# remote-state-86s-vikas
# │
# ├── worskpace-demo                ← default workspace
# │
# └── env:
#     ├── dev/worskpace-demo        ← dev workspace
#     └── prod/worskpace-demo       ← prod workspace