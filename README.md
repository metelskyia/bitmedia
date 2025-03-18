# 🚀 AWS Infrastructure Deployment with Terraform & Ansible

This guide will walk you through setting up and deploying infrastructure on AWS using Terraform and Ansible.

## 🔑 Generate SSH Key

First, generate an SSH key to securely access your instances:

```sh
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

## 🔐 Set AWS Credentials

Export your AWS access keys as environment variables:

```sh
export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"
```

## 🌍 Deploy Infrastructure with Terraform

Navigate to the Terraform directory and initialize the project:

```sh
cd terraform
terraform init
terraform apply
```
Confirm the deployment by typing `yes` when prompted.

## ⚙️ Configure Servers with Ansible

Once the infrastructure is deployed, move to the Ansible directory:

```sh
cd ../ansible
```

Run the Ansible playbook to configure the servers:

```sh
ansible-playbook -i inventory.ini playbook.yml
```
