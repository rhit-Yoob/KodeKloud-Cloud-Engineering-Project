# Creating AWS Key Pair

## The Task

Create an SSH key pair named `devopKey` to securely connect to EC2 instances.

## My Approach

I decided to automate this using the AWS CLI instead of doing it manually through the console.

## The Script
```bash
#!/bin/bash
# Creating an SSH key pair named devopkey that lets you securely connect to your EC2 instances
aws ec2 create-key-pair --key-name "devopKey" --key-type "rsa"
```

See the full script: [create-keypair.sh](CreateAWSKeypair.sh)

## What I Learned

- The `--key-type "rsa"` parameter specifies RSA encryption
- This outputs the private key to stdout, so I should redirect it:
```bash
  aws ec2 create-key-pair --key-name "devopKey" --key-type "rsa" --query 'KeyMaterial' --output text > devopKey.pem
```
- Need to set proper permissions: `chmod 400 devopKey.pem`

## Thoughts

Using CLI feels more DevOps-y than clicking through the console. Plus it's repeatable!

---

*January 2026 - AWS Key Management*
