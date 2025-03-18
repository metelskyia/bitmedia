1)ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

2)Put your AWS keys to environment
export AWS_ACCESS_KEY_ID="*"
export AWS_SECRET_ACCESS_KEY="*"

3)Write commands
cd terraform
terraform init
terraform apply
yes
cd ../ansible
ansible-playbook -i inventory.ini playbook.yml
