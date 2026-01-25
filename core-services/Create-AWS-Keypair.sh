# Creating an SSH key pair named devopkey that lets you securely connect to your EC2 instances
aws ec2 create-key-pair \ --key-name "devopKey" \ --key-type "rsa"
