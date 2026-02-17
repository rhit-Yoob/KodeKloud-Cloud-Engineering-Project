# Day 16: Create IAM User

## 📋 Project Overview

Created an IAM (Identity and Access Management) user using AWS CLI. This marks the beginning of the IAM section of the 100 Days of Cloud challenge. IAM is one of the first and most critical services to configure when establishing AWS infrastructure, as it controls who can access what within your AWS account.

---

## 🎯 Objective

Create an IAM user with the following requirements:
- **Username**: `iamuser_mark`
- **Method**: AWS CLI

---

## 🛠️ Implementation

### Command Used
![shell command](create-iam-AWS.sh)

```bash
# Create IAM user
aws iam create-user --user-name iamuser_mark
```

**Syntax Breakdown:**
- `aws iam` - The IAM service namespace
- `create-user` - Creates a new IAM user
- `--user-name` - The name for the new user

---

### Command Output

```json
{
    "User": {
        "Path": "/",
        "UserName": "iamuser_mark",
        "UserId": "AIDAVHK4X3EUI3ZDFFDPO",
        "Arn": "arn:aws:iam::359361141032:user/iamuser_mark",
        "CreateDate": "2026-02-17T06:49:10Z"
    }
}
```

**Output Explanation:**
- `Path` - Organizational path for the user (`/` = root, default)
- `UserName` - Confirms the username `iamuser_mark`
- `UserId` - Unique internal ID assigned by AWS
- `Arn` - Amazon Resource Name, the unique identifier for this user globally
- `CreateDate` - Timestamp when the user was created

---

### Verification

![IAM User Created](Images/create-iam-AWS.png)

✅ **IAM user successfully created!**

---

## 📚 What I Learned

### **What is IAM?**

**Identity and Access Management (IAM)** is the AWS service that controls:
- **Who** can access your AWS account (Authentication)
- **What** they can do once inside (Authorization)

**IAM is free** - no additional charge to use IAM.

**Core IAM Components:**

| Component | Purpose |
|-----------|---------|
| **Users** | Individual people or applications |
| **Groups** | Collections of users with shared permissions |
| **Roles** | Permissions assumed by services or users temporarily |
| **Policies** | Documents defining what actions are allowed/denied |

---

### **What is an IAM User?**

An IAM user is an **identity** that represents a person or application that interacts with AWS.

**What an IAM user has:**
- Unique username
- Optional password (for console access)
- Optional access keys (for CLI/API access)
- Attached permissions (via policies or groups)

**What a new IAM user CANNOT do by default:**
- ❌ Access any AWS service
- ❌ Log into the console (no password set)
- ❌ Make API calls (no access keys)
- ❌ Perform any actions

**A new user has ZERO permissions until explicitly granted!**

---

### **Understanding the ARN**

The ARN (Amazon Resource Name) uniquely identifies every resource in AWS:

```
arn:aws:iam::359361141032:user/iamuser_mark
 │    │    │       │              │
 │    │    │       │              └── Resource: user/iamuser_mark
 │    │    │       └── Account ID: 359361141032
 │    │    └── Service: iam
 │    └── Partition: aws
 └── Prefix: arn
```

**ARN Format:**
```
arn:partition:service:region:account-id:resource
```

**IAM ARNs have no region** because IAM is a **global service** (not region-specific).

---

### **IAM User vs Root User**

| | Root User | IAM User |
|--|-----------|----------|
| **Created** | When AWS account created | By admin/IAM |
| **Access** | Full unrestricted access | Only what policies allow |
| **Use for** | Initial setup only | Day-to-day operations |
| **Best Practice** | Lock away, use MFA | Use for all regular work |
| **Can be deleted?** | No | Yes |

**AWS Best Practice:** Never use the root account for daily tasks. Create IAM users instead.

---

## 🔑 Key Takeaways

1. **IAM Controls Access**: Who can access AWS and what they can do

2. **New Users Have Zero Permissions**: Must explicitly grant access

3. **IAM is Global**: Not region-specific like EC2 or S3

4. **ARN is the Unique Identifier**: Every IAM resource has a globally unique ARN

5. **Never Use Root**: Create IAM users for all daily operations

6. **Path is Optional**: Used for organization in large teams, defaults to `/`

7. **IAM is Free**: No cost to create users, groups, roles, or policies

---
## 📖 Resources

- [AWS CLI create-user Reference](https://docs.aws.amazon.com/cli/latest/reference/iam/create-user.html)
- [IAM Documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html)
- [IAM Best Practices](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html)

---

## ✅ Project Status

**Status**: Completed ✅  
**Date**: February 17, 2026  
**Username**: `iamuser_mark`  
**User ID**: `AIDAVHK4X3EUI3ZDFFDPO`  
**ARN**: `arn:aws:iam::359361141032:user/iamuser_mark`  
**Path**: `/`  
**Created**: `2026-02-17T06:49:10Z`  
**Method**: AWS CLI  

---

## 🤔 Reflection

**What I Learned:**
- IAM is the first and most critical service to configure in AWS
- New IAM users have zero permissions by default
- IAM is a global service (no region required)
- The ARN uniquely identifies every resource in AWS
- Root user should never be used for daily tasks

**Key Insight:**
Days 1-15 focused on compute, storage, and networking. Starting Day 16, the focus shifts to **identity and security** - the foundation everything else is built on. IAM should actually be set up before creating any other resources, but learning it now helps me understand why each EC2 instance, S3 bucket, and volume I created earlier needs proper access controls.

**Looking Ahead:**
Days 16-20 will build a complete IAM setup:
- Day 16: Create user ✅
- Day 17: Create group
- Day 18: Create policy
- Day 19: Attach policy to user
- Day 20: Create role

**Professional Takeaway:**
In a real AWS environment, IAM is never an afterthought. Security is built in from day one. The Nautilus DevOps team's approach of configuring IAM as part of initial infrastructure setup is exactly the right way to approach AWS security.

---

**Tags**: #AWS #IAM #Security #UserManagement #AccessControl #CLI #100DaysOfCloud
