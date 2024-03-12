# Terraform to create setup monitoring, uptime checks and alerts. 
This will create follwing resources  
  - Uptime Checks
  - Notification Channels
  - Alerts for Uptime checks


## Init terraform
To initialize and download the required providers
```bash
terraform init -var-file dev.tfvars
```

## Check what gets created
```bash
terraform plan -var-file dev.tfvars
```

## Provision Infrastructure
```bash
terraform apply -var-file dev.tfvars
```

## Destroy Infrastructure
```bash
terraform destroy -var-file dev.tfvars
```

## Create specific resource -
e.g node pool
```bash
terraform apply -target <terraform module> -var-file dev.tfvars    
```

## Destroy specific resource - 
e.g node pool
```bash
terraform destroy -target <terraform module> -var-file dev.tfvars    
```
