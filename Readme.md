# ansible-terraform-infra

A bite-sized example using Terraform + Ansible to spin up one EC2 instance and install NGINX.

## Prerequisites

- **AWS CLI** configured (`aws configure`) or via environment variables
- **Terraform** ≥0.14
- **Ansible** ≥2.9

## Repo structure
ansible-terraform-infra/
├── terraform/
│ ├── main.tf
│ └── backend.tf
├── ansible/
│ ├── inventory.ini # add the public_ip here
│ └── playbook.yml
├── .gitignore
└── README.md

## Usage

1. **Terraform**  
```bash
cd terraform
terraform init
terraform apply -auto-approve
```
Copy the public_ip from the output into ansible/inventory.ini.

2. **Ansible**

```bash
cd ../ansible
ansible-playbook -i inventory.ini playbook.yml

```

## Clean up

```bash
cd terraform
terraform destroy -auto-approve

```


