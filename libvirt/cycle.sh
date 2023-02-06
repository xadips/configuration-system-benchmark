#!/bin/zsh
# Simple script to re-run testing quicker
terraform destroy -auto-approve
terraform init
terraform plan
terraform apply -auto-approve
