[ec2_instances]
%{for ip in public_ips}
${ip} ansible_user=ubuntu ansible_ssh_private_key_file=../ssh
%{endfor}