# Configure AWS Credentials
Create a New IAM User:
1. Log in to your AWS Management Console > Search “IAM”
2. In the IAM dashboard, click on “Users” in the sidebar
3. Click the “Create user” button > Choose a username for the new user
4. Create Group for “Admin Access” > Add user to the group
5. Click Next > Next > Click on the user that you’ve created just now.
6. Click on “Create access key” > Select Use case as “Local code” > Next
7. A confirmation page will display the “Access key ID” and “Secret access key” for the user.

# Sensitive values
create `secrets.auto.tfvars` file with the following values:
```tf
aws_access_key = ""
aws_secret_key = ""

key-name                    = "tf-deployer-key"
network-security-group-name = "tf-nsg"
ami                         = "ami-07b36ea9852e986ad"
ubuntu-instance-type        = "t2.micro"
```

# connect to server
```bash
sudo ssh -i ".ssh/tf-deployer-key.pem" ubuntu@ip-address.compute.amazonaws.com
```