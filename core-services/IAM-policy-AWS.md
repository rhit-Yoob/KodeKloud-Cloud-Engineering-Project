# Day 18: Create IAM Policy

## 📋 Project Overview

Created an IAM policy using the AWS Console to grant read-only access to EC2 resources. This policy allows users to view all instances, AMIs, and snapshots in the Amazon EC2 console without the ability to modify or delete them. This demonstrates the principle of least privilege - granting only the permissions needed.

---

## 🎯 Objective

Create an IAM policy with the following requirements:
- **Policy Name**: `iampolicy_ammar`
- **Region**: `us-east-1`
- **Permissions**: Read-only access to EC2 console (view instances, AMIs, snapshots)
- **Method**: AWS Console

---

## 🛠️ Implementation

### Method: AWS Console (Web Interface)

**Steps Taken:**

1. Navigate to **IAM Dashboard** → **Policies** → **Create policy**

2. Selected **EC2** service

3. Selected **Read** access level (List and Describe actions)

4. Allowed actions include:
   - `ec2:DescribeInstances` - View EC2 instances
   - `ec2:DescribeImages` - View AMIs
   - `ec2:DescribeSnapshots` - View snapshots
   - Other read-only EC2 actions

5. Named the policy: `iampolicy_ammar`

6. Created the policy

---

### Verification

![IAM Policy Created](Images/IAM-policy-AWS.png)

✅ **IAM policy successfully created!**

---

## 📚 What I Learned

### **What is an IAM Policy?**

An IAM policy is a **JSON document** that defines permissions - what actions are allowed or denied on which AWS resources.

**Think of it as:** A permission slip that says "You can read these things, but not change them."

**Policy Structure:**
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ec2:DescribeInstances",
        "ec2:DescribeImages",
        "ec2:DescribeSnapshots"
      ],
      "Resource": "*"
    }
  ]
}
```

---

### **Policy Components**

| Component | Description |
|-----------|-------------|
| **Version** | Policy language version (always `2012-10-17`) |
| **Statement** | Array of permission statements |
| **Effect** | `Allow` or `Deny` |
| **Action** | AWS service actions (e.g., `ec2:DescribeInstances`) |
| **Resource** | Which resources the actions apply to (`*` = all) |

---

### **Read-Only vs Full Access**

**Read-Only Policy (What We Created):**
- ✅ View instances, AMIs, snapshots
- ❌ Cannot launch instances
- ❌ Cannot terminate instances
- ❌ Cannot create AMIs
- ❌ Cannot delete snapshots

**Full Access Policy:**
- ✅ View everything
- ✅ Create resources
- ✅ Modify resources
- ✅ Delete resources

**Principle of Least Privilege:** Give only the minimum permissions needed for the job.

---

### **EC2 Read-Only Actions**

The policy allows these actions:

| Action | What It Allows |
|--------|----------------|
| `ec2:DescribeInstances` | View EC2 instances (Day 6-14 resources) |
| `ec2:DescribeImages` | View AMIs (Day 13) |
| `ec2:DescribeSnapshots` | View snapshots (Day 15) |
| `ec2:DescribeVolumes` | View EBS volumes (Day 5, 12) |
| `ec2:DescribeSecurityGroups` | View security groups (Day 2) |
| `ec2:DescribeKeyPairs` | View key pairs (Day 1) |

**Note:** "Describe" actions are read-only. "Create", "Delete", "Terminate" actions would be write operations.

---

### **Policy Types**

**1. AWS Managed Policies:**
- Created and maintained by AWS
- Example: `AmazonEC2ReadOnlyAccess`
- Cannot be modified
- Automatically updated by AWS

**2. Customer Managed Policies:**
- Created by you (what we did)
- Can be customized and modified
- You maintain them

**3. Inline Policies:**
- Embedded directly in a user/group/role
- Not reusable
- Deleted when the user/group/role is deleted

**Best Practice:** Use customer managed policies for reusability.

---

### **Why Not Use AWS Managed Policy?**

AWS provides `AmazonEC2ReadOnlyAccess` which does exactly what we need!

**Why create a custom policy?**
- Learning exercise (understand how policies work)
- Might need slightly different permissions in production
- Organization-specific requirements
- Fine-grained control over exactly which actions are allowed

**In production:** Often start with AWS managed policies, then create custom ones when you need to customize.

---

### **IAM Policies are Global**

Like users and groups:
- **IAM policies exist globally** across all regions
- The policy we created in `us-east-1` works everywhere
- Even though the task says "in us-east-1 region," IAM resources are not region-specific

**Note:** The policy **applies** to EC2 resources in all regions, but the policy itself is global.

---

## 🔑 Key Takeaways

1. **Policies Define Permissions**: JSON documents specifying allowed/denied actions

2. **Least Privilege Principle**: Grant minimum permissions needed (read-only, not full access)

3. **Describe = Read-Only**: Actions starting with "Describe" are read-only

4. **Policies Are Global**: Work across all regions despite being "created in" a region

5. **Three Policy Types**: AWS managed, customer managed, inline

6. **Policies Don't Do Anything Alone**: Must be attached to users, groups, or roles

7. **Console is Visual**: Good for learning; CLI is better for automation

---


## 📖 Resources

- [IAM Policies Documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
- [EC2 Actions and Permissions Reference](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonec2.html)
- [Policy Generator](https://awspolicygen.s3.amazonaws.com/policygen.html)

---

## ✅ Project Status

**Status**: Completed ✅  
**Date**: February 18, 2026  
**Policy Name**: `iampolicy_ammar`  
**Policy Type**: Customer Managed Policy  
**Permissions**: Read-only access to EC2 (instances, AMIs, snapshots)  
**Allowed Actions**: `ec2:Describe*` (all Describe actions)  
**Effect**: Allow  
**Resource**: `*` (all EC2 resources)  
**Method**: AWS Console  

---

## 🤔 Reflection

**What I Learned:**
- IAM policies are JSON documents that define what actions are allowed or denied
- Read-only access is achieved through "Describe" actions
- Policies are global but apply to resources in all regions
- The principle of least privilege means giving minimum necessary permissions
- Policies must be attached to users, groups, or roles to have any effect

**Key Insight:**
Days 16-18 have been building the components of IAM:
- Users = who
- Groups = organizational containers
- Policies = what they can do

Each component by itself does nothing. Day 19 will connect them together to create a functioning access control system.

**Console vs CLI Learning:**
Using the console for this task was helpful because I could see all available EC2 actions and select exactly what I needed. The visual policy editor showed me the structure of a policy. Now that I understand the concepts, I could write policies via CLI or even automate them with Infrastructure as Code.

**Connection to Previous Days:**
This policy grants read-only access to:
- Instances (Days 6-14)
- AMIs (Day 13)
- Snapshots (Day 15)
- Volumes (Days 5, 12)
- Security Groups (Day 2)
- Key Pairs (Day 1)

It's like creating a "view-only mode" for all the EC2 resources I've been creating!

**Professional Takeaway:**
In production environments, you never give everyone admin access. Different teams need different levels of access. QA needs read-only, developers need full dev environment access, DevOps needs broader access. Policies make this granular control possible.

---

**Tags**: #AWS #IAM #Policy #Permissions #LeastPrivilege #EC2ReadOnly #Security #100DaysOfCloud
