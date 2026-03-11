# Day 10: Attach Elastic IP to EC2 Instance

## 📋 Project Overview

Attached an existing Elastic IP to an EC2 instance using AWS CLI. This demonstrates understanding of static IP addressing in AWS and how to maintain consistent public IP addresses for instances.

---

## 🎯 Objective

Attach an Elastic IP to an EC2 instance with the following requirements:
- **Instance Name**: `devops-ec2`
- **Elastic IP Name**: `devops-ec2-eip`
- **Region**: `us-east-1`
- **Method**: AWS CLI

---

## 🛠️ Implementation

### Command Used
![shell command](attach-elastic-ip-AWS-ec2.sh)

```bash
# Attach Elastic IP to EC2 instance
aws ec2 associate-address \
  --instance-id i-0b018d28ada269cc5 \
  --allocation-id eipalloc-08add820a3553acd4
```

**Syntax Breakdown:**
- `associate-address` - Attaches an Elastic IP to a resource
- `--instance-id` - The EC2 instance to attach the IP to
- `--allocation-id` - The Elastic IP allocation ID (starts with `eipalloc-`)

---

### Verification

![Elastic IP Attached to Instance](Images/attach-elastic-ip-AWS-ec2.png)

✅ **Elastic IP successfully attached!**

---

## 📚 What I Learned

### **What is an Elastic IP?**

An Elastic IP (EIP) is a **static public IPv4 address** designed for dynamic cloud computing.

**Regular Public IP vs Elastic IP:**

| Feature | Regular Public IP | Elastic IP |
|---------|------------------|------------|
| **Cost** | Free | Free when attached, $0.005/hr when NOT attached |
| **Persistence** | Changes on stop/start | Never changes |
| **Control** | AWS assigns automatically | You reserve and manage it |
| **Reassignment** | Cannot move to another instance | Can move between instances |
| **Release** | Released when instance terminates | Persists until you release it |

**Key Difference:** Regular public IPs change when you stop/start an instance. Elastic IPs stay the same.

---

### **Why Use Elastic IP?**

**Problem with Regular Public IPs:**
```
1. Launch instance → Gets IP: 54.123.45.67
2. Configure DNS → Points to 54.123.45.67
3. Stop instance (to save costs overnight)
4. Start instance next day → Gets NEW IP: 52.98.76.54
5. DNS still points to old IP → Website broken ❌
```

**Solution with Elastic IP:**
```
1. Launch instance → Attach Elastic IP: 52.45.123.89
2. Configure DNS → Points to 52.45.123.89
3. Stop instance
4. Start instance → SAME IP: 52.45.123.89
5. DNS still works → Website accessible ✅
```

---

## 🔑 Key Takeaways

1. **Elastic IPs are Static Public IPs**: Unlike regular public IPs, they don't change

2. **Free When Attached**: Only charged when allocated but not in use

3. **Survives Stop/Start**: IP persists even when instance is stopped

4. **Requires Allocation ID**: Use `eipalloc-xxxxx` format, not the IP address itself

5. **One IP per Instance**: An instance can only have one Elastic IP at a time

6. **Can Be Reassigned**: Move the same IP between different instances

---

## 💡 Real-World Use Case

**Scenario: Production Web Server**

A company runs a website on EC2:
- Domain: `www.example.com`
- DNS points to the server's IP address

**Without Elastic IP:**
```
- Instance crashes, needs to be replaced
- New instance gets different public IP
- Must update DNS records (takes hours to propagate)
- Website down during DNS propagation ❌
```

**With Elastic IP:**
```
- Instance crashes, needs to be replaced
- Launch new instance
- Detach Elastic IP from old instance
- Attach Elastic IP to new instance
- DNS still points to same IP
- Website back online in minutes ✅
```

**Recovery Time:**
- Without EIP: 2-48 hours (DNS propagation)
- With EIP: 5-10 minutes (instance launch + IP attachment)

---

## 📖 Resources

- [AWS Elastic IP Documentation](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/working-with-eips.html)
- [AWS CLI associate-address Reference](https://docs.aws.amazon.com/cli/latest/reference/ec2/associate-address.html)

---

## ✅ Project Status

**Status**: Completed ✅  
**Date**: January 30, 2026  
**Instance Name**: `devops-ec2`  
**Instance ID**: `i-0b018d28ada269cc5`  
**Elastic IP Name**: `devops-ec2-eip`  
**Allocation ID**: `eipalloc-08add820a3553acd4`  
**Region**: `us-east-1`  
**Method**: AWS CLI  

---

## 🤔 Reflection

**What I Learned:**
- Elastic IPs are static public IP addresses that don't change
- Regular public IPs change when you stop/start instances, Elastic IPs don't
- Elastic IPs are free when attached, but cost money when not in use
- The allocation ID (eipalloc-xxxxx) is used to reference the Elastic IP

**Key Insight:**
This solves a real problem in cloud computing - keeping a consistent IP address. Without Elastic IPs, you'd have to update DNS records every time an instance restarts, which could cause downtime. This is critical for production services.

**Professional Takeaway:**
Elastic IPs are essential for any service that needs a consistent public IP address. However, they should be used sparingly because of cost and the IPv4 address shortage. For many use cases, a load balancer with DNS is a better solution.

---

**Tags**: #AWS #EC2 #ElasticIP #StaticIP #Networking #CLI #100DaysOfCloud
