# UniFi Controller

## Prerequisites:

- AWS account with AWS CLI configured successfully
- Security and VPC have already existed.
- UniFi account
- Installed Terraform (1.5.7)
- Installed Ansible
- Installed Docker and Docker-compose

## Create Infrastructure

1. git clone https://github.com/karnauxg/Twist-test.git
2. Edit variables.tf

| Name | Description |
|------|---------|
| <a name="create"></a> [create\_name](#input\create\_name) | Set true, if you need add your pair key. Default is false. |
| <a name="key_name"></a> [key_name\_name](#input\key_name\_name) | It is name you pair_key |
| <a name="vpc_security_group_ids"></a> [vpc_security_group_ids\_name](#input\vpc_security_group_ids\_name) | It is a security group in your AWS. Already exist. |
| <a name="subnet_id"></a> [subnet_id\_name](#input\subnet_id\_name) | It is a subnet in your AWS. Already exist. |


3. Go to directory: cd ./terraform 
    - `terraform init`
    - `terraform plan`
    - `terraform apply -auto-approve`


## Build Image and Push to ECR

1. Go to directory: cd ./unifi-docker.
2. Run the next commands. Don't forget the change in the next commands `<ID your account>`
    - `docker build -t unifi-twist:latest .`
    - `aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <ID your account>.dkr.ecr.us-east-1.amazonaws.com`
    - `docker tag unifi-twist:latest <ID your account>.dkr.ecr.us-east-1.amazonaws.com/twist_ecr:latest`


## Run UniFi with Ansible

1. Go to directory: cd ./ansible 

Change the values in ./ansible.cfg:

| Name | Description |
|------|---------|
| <a name="private_key_file"></a> [private_key_file\_name](#input\private_key_file\_name) | Path to your private ssh key |


Change the values in ./inventories/unifi.yaml:

| Name | Description |
|------|---------|
| <a name="ansible_host"></a> [ansible_host\_name](#input\ansible_host\_name) | It is Public IP your EC2 |


Change the values in ./roles/deploy/defaults/main.yaml:

| Name | Description |
|------|---------|
| <a name="aws_account_id"></a> [aws_account_id\_name](#input\aws_account_id\_name) | Your AWS account ID |
| <a name="aws_access_key_id"></a> [aws_access_key_id\_name](#input\aws_access_key_id\_name) | Your aws_access_key_id|
| <a name="aws_secret_access_key"></a> [aws_secret_access_key\_name](#input\aws_secret_access_key\_name) | Your aws_secret_access_key |


2. After each deploy will be created tar.gz and put into S3
