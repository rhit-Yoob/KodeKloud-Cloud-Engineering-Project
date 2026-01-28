# Day 2: Creating AWS Security Group

## The Task

Create a security group named `nautilus-sg` for the Nautilus App Servers with HTTP and SSH access.

## Requirements

- **Security Group Name**: `nautilus-sg`
- **Description**: "Security group for Nautilus App Servers"
- **Inbound Rules**:
  - HTTP (port 80) from anywhere (0.0.0.0/0)
  - SSH (port 22) from anywhere (0.0.0.0/0)

## My Approach

I used the AWS CLI to automate this instead of clicking through the console. Breaking it into steps made it clearer.

## The Script

See the full script: [create-security-group.sh](create-AWS-security-group.sh)

```bash
#!/bin/bash

# Step 1: Create the security group
aws ec2 create-security-group \
    --group-name nautilus-sg \
    --description "Security group for Nautilus App Servers"

# Step 2: Add HTTP access (port 80)
aws ec2 authorize-security-group-ingress \
    --group-id sg-082ece030c262a8fa \
    --protocol tcp \
    --port 80 \
    --cidr 0.0.0.0/0

# Step 3: Add SSH access (port 22)
aws ec2 authorize-security-group-ingress \
    --group-id sg-082ece030c262a8fa \
    --protocol tcp \
    --port 22 \
    --cidr 0.0.0.0/0
```

## What I Learned

### Security Group vs Network ACL
Security groups are like firewalls for individual EC2 instances. They're stateful, meaning if you allow inbound traffic, the response is automatically allowed out.

### The CIDR 0.0.0.0/0
This means "from anywhere on the internet." It's convenient for testing but definitely not secure for production!

**Better practice for SSH**:
```bash
# Only allow SSH from my IP
--cidr YOUR_IP_ADDRESS/32
```

### The Group ID Issue
I had to create the security group first, then grab the `group-id` from the output to use in the ingress rules. The initial creation returns something like:
```json
{
    "GroupId": "sg-082ece030c262a8fa"
}
```

That's where `sg-082ece030c262a8fa` came from!

## My Thoughts

**What worked well**:
- Breaking it into three separate commands made it clear what each step does
- Using CLI felt more "Infrastructure as Code" than the console

**What I'd improve**:
- Capture the group-id automatically instead of hardcoding it
- Add better security by restricting SSH to my IP only
- Maybe add tags to identify the security group later

**Security concerns I noticed**:
- Opening SSH (port 22) to 0.0.0.0/0 is risky - anyone can try to connect
- For production, I should use a bastion host or VPN
- HTTP on port 80 from anywhere makes sense for a public web server though



## Key Takeaways

- Security groups are essential for controlling access to EC2 instances
- Always think about the principle of least privilege
- Automating with scripts makes it repeatable and documents what you did
- Capturing output in variables makes scripts more flexible

---

*January 2026 - AWS Security Configuration*
