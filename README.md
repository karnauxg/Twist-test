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
    `create` - Set true, if you need add your pair key. Default is false.
    `key_name`- It is name you pair_key
    `vpc_security_group_ids` - It is a security group in your AWS. Already exist.
    `subnet_id` - It is a subnet in your AWS. Already exist.

3. Go to directory: cd ./terraform 
    `terraform init`
    `terraform plan`
    `terraform apply -auto-approve`


## Build Image and Push to ECR

1. Go to directory: cd ./unifi-docker.
2. Run the next commands. Don't forget the change in the next commands `<ID your account>`
    `docker build -t unifi-twist:latest .`
    `aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <ID your account>.dkr.ecr.us-east-1.amazonaws.com`
    `docker tag unifi-twist:latest <ID your account>.dkr.ecr.us-east-1.amazonaws.com/twist_ecr:latest`


## Run UniFi with Ansible

1. Go to directory: cd ./ansible 
2. Change the values in ./ansible.cfg:
| Name | Description |
|------|---------|
| <a name="private_key_file"></a> | Path to your private ssh key|

3. Change the values in ./inventories/unifi.yaml:
| Name | Description |
|------|---------|
| <a name="ansible_host"></a> | It is Public IP your EC2 |

4. Change the values in ./roles/deploy/defaults/main.yaml:
| Name | Description |
|------|---------|
| <a name="aws_account_id"></a> | Your AWS account ID |
| <a name="aws_access_key_id"></a> | Your aws_access_key_id|
| <a name="aws_secret_access_key"></a> | Your aws_secret_access_key |

5. After each deploy will be created tar.gz and put into S3
