# Build image and pull to docker hub
First you need to add the login and token in the docker hub
```sh
sh ./build.sh
```

# Create EC2 instance 
First you need to add the data for authorization in the AWS
```sh
cd terraform
terraform init
terraform plan
terraform apply
```

# Install docker-compose and deploy nginx server by using Ansible
Need added IP to hosts file
And install `ansible-galaxy collection install community.docker`
```sh
ansible-playbook -i hosts site.yml
```
