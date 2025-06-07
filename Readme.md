# ansible-terraform-infra

A bite-sized example using Terraform + Ansible to spin up one EC2 instance and install NGINX on Ubuntu 22.04 LTS.

## Prerequisites

- **AWS CLI** configured (aws configure) or via environment variables (AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_DEFAULT_REGION)

- **Terraform** ≥0.14

- **Ansible** ≥2.9

- **SSH key pair:**

Either create one in the AWS console and reference it via key_name, or let Terraform generate one for you.
- **s3 bucket**
S3 bucket to store state lock


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
terraform plan
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


