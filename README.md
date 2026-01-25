# Cloud Engineering Projects

A comprehensive hands-on journey through AWS and Azure cloud platforms, completing the **KodeKloud 100 Days of Cloud** challenge. This repository showcases practical cloud engineering skills across 100 real-world projects split evenly between AWS (Days 1-50) and Azure (Days 51-100).

## 🎯 Challenge Overview

**Program**: KodeKloud 100 Days of Cloud  
**Duration**: 100 Days  
**Platforms**: AWS (50 days) + Azure (50 days)  
**Structure**: 5 core categories per platform  
**Goal**: Build production-ready multi-cloud engineering skills

## 📂 Repository Structure

Projects are organized by cloud platform and topic category for easy navigation:

```
cloud-engineering-projects/
│
├── AWS/
│   ├── 01-core-services/           # Days 1-20
│   ├── 02-networking-compute/      # Days 21-30
│   ├── 03-databases-containers/    # Days 31-40
│   ├── 04-serverless-automation/   # Days 41-48
│   └── 05-security-advanced/       # Days 49-50
│
└── Azure/
    ├── 01-core-services/           # Days 1-20
    ├── 02-networking-compute/      # Days 21-30
    ├── 03-databases-containers/    # Days 31-40
    ├── 04-automation-integration/  # Days 41-48
    └── 05-advanced-architecture/   # Days 49-50
```

---

## 🚀 AWS Track (Days 1-50)

### **Category 1: Core Services & Fundamentals** (Days 1-20)

**Focus**: EC2, S3, IAM, Security Groups, Networking Basics

| Day | Project | Skills |
|-----|---------|--------|
| 1 | Create Key Pair | SSH authentication, security |
| 2 | Create Security Group | Firewall rules, network security |
| 3 | Create Subnet | VPC networking, CIDR blocks |
| 4 | Enable Versioning for S3 Bucket | Object storage, data protection |
| 5 | Create GP3 Volume | Block storage, EBS |
| 6 | Launch EC2 Instance | Virtual machines, compute |
| 7 | Change EC2 Instance Type | Scaling, right-sizing |
| 8 | Enable Stop Protection for EC2 | Instance protection |
| 9 | Enable Termination Protection for EC2 | Data safety |
| 10 | Attach Elastic IP to EC2 Instance | Static IP addressing |
| 11 | Attach Elastic Network Interface to EC2 | Advanced networking |
| 12 | Attach Volume to EC2 Instance | Storage management |
| 13 | Create AMI from EC2 Instance | Image creation, backups |
| 14 | Terminate EC2 Instance | Resource cleanup |
| 15 | Create Volume Snapshot | Backup strategies |
| 16 | Create IAM User | Identity management |
| 17 | Create IAM Group | Access control |
| 18 | Create Read-Only IAM Policy for EC2 | Policy creation |
| 19 | Attach IAM Policy to IAM User | Permission assignment |
| 20 | Create IAM Role for EC2 with Policy | Service roles, least privilege |

---

### **Category 2: Networking & Advanced Compute** (Days 21-30)

**Focus**: Load Balancers, VPC Peering, NAT, CloudWatch, Web Servers

| Day | Project | Skills |
|-----|---------|--------|
| 21 | Setting Up EC2 with Elastic IP for Application Hosting | Application deployment |
| 22 | Configuring Secure SSH Access to EC2 | Security hardening |
| 23 | Data Migration Between S3 Buckets Using AWS CLI | CLI operations, data transfer |
| 24 | Setting Up Application Load Balancer for EC2 | Load balancing, high availability |
| 25 | Setting Up EC2 and CloudWatch Alarm | Monitoring, alerting |
| 26 | Configuring EC2 as Web Server with Nginx | Web hosting |
| 27 | Configuring Public VPC with EC2 for Internet Access | VPC architecture |
| 28 | Creating Private ECR Repository | Container registry |
| 29 | Secure Communication Between Public and Private VPCs via Peering | VPC peering, private networking |
| 30 | Enable Internet Access for Private EC2 using NAT Instance | NAT, outbound connectivity |

---

### **Category 3: Databases & Container Services** (Days 31-40)

**Focus**: RDS, Lambda, ECS, S3 Static Hosting

| Day | Project | Skills |
|-----|---------|--------|
| 31 | Configuring Private RDS Instance for Application Development | Managed databases, MySQL/PostgreSQL |
| 32 | Snapshot and Restoration of RDS Instance | Database backups, disaster recovery |
| 33 | Create a Lambda Function | Serverless computing |
| 34 | Create Lambda Function Using CLI | Infrastructure automation |
| 35 | Deploying and Managing Applications on AWS | Application deployment |
| 36 | Load Balancing EC2 Instances with Application Load Balancer | Traffic distribution |
| 37 | Managing EC2 Access with S3 Role-based Permissions | IAM roles, service access |
| 38 | Deploying Containerized Applications with Amazon ECS | Container orchestration |
| 39 | Hosting Static Website on AWS S3 | Static site hosting |
| 40 | Troubleshooting Internet Accessibility for EC2-Hosted Application | Debugging, problem-solving |

---

### **Category 4: Serverless & Automation** (Days 41-48)

**Focus**: KMS, DynamoDB, EKS, Auto Scaling, Event-Driven Architecture

| Day | Project | Skills |
|-----|---------|--------|
| 41 | Securing Data with AWS KMS | Encryption, key management |
| 42 | Building and Managing NoSQL Databases with DynamoDB | NoSQL, database design |
| 43 | Scaling and Managing Kubernetes Clusters with Amazon EKS | Kubernetes, container orchestration |
| 44 | Implementing Auto Scaling for High Availability | Auto scaling, elasticity |
| 45 | Configure NAT Gateway for Internet Access in Private VPC | Managed NAT, networking |
| 46 | Event-Driven Processing with S3 and Lambda | Event-driven architecture |
| 47 | Integrating AWS SQS and SNS for Reliable Messaging | Message queues, pub/sub |
| 48 | Automating Infrastructure Deployment with CloudFormation | Infrastructure as Code |

---

### **Category 5: Security & Advanced Topics** (Days 49-50)

**Focus**: Audit Logging, Storage Expansion, Production Architecture

| Day | Project | Skills |
|-----|---------|--------|
| 49 | Centralized Audit Logging with VPC Peering | Compliance, logging, monitoring |
| 50 | Expanding EC2 Instance Storage for Development Needs | Storage scaling, volume management |

---

## 🌐 Azure Track (Days 51-100)

### **Category 1: Core Services & Fundamentals** (Days 1-20)

**Focus**: VMs, VNets, Storage, NSGs, ARM Templates

| Day | Project | Skills |
|-----|---------|--------|
| 1 | Create SSH Key Pair for Azure Virtual Machine | SSH authentication |
| 2 | Create an Azure Virtual Machine | Virtual machines, compute |
| 3 | Create VM using Azure CLI | CLI automation |
| 4 | Create a Virtual Network (VNet) in Azure | Network architecture |
| 5 | Create a Virtual Network (IPv4) in Azure | IPv4 networking |
| 6 | Create a Subnet in Azure Virtual Network | Subnet design |
| 7 | Create a Public IP Address for Azure VM | IP addressing |
| 8 | Attach Managed Disk to Azure Virtual Machine | Disk management |
| 9 | Attach Network Interface Card (NIC) to Azure VM | Network configuration |
| 10 | Attach Public IP to Azure Virtual Machine | Connectivity |
| 11 | Change Azure Virtual Machine Size Using Console | VM sizing, scaling |
| 12 | Add and Manage Tags for Azure Virtual Machines | Resource organization |
| 13 | SSH into an Azure Virtual Machine | Remote access |
| 14 | Create and Attach Managed Disks in Azure | Storage provisioning |
| 15 | Create and Configure Network Security Group (NSG) | Firewall rules |
| 16 | Create a Private Azure Blob Storage Container | Object storage |
| 17 | Create a Public Azure Blob Storage Container | Public storage |
| 18 | Copy Data to an Azure Blob Storage Container | Data migration |
| 19 | Convert Public Azure Blob Container to Private | Security hardening |
| 20 | Deploy Azure Resources Using ARM Template | Infrastructure as Code |

---

### **Category 2: Networking & Advanced Compute** (Days 21-30)

**Focus**: User Data, VNet Configuration, ACR, SQL Database

| Day | Project | Skills |
|-----|---------|--------|
| 21 | Assigning Public IP to Virtual Machines | IP management |
| 22 | Configuring Instances with User Data | VM initialization |
| 23 | Automating User Data Configuration Using the CLI | Automation |
| 24 | Securing Virtual Machine SSH Access | Security best practices |
| 25 | Expanding and Managing Disk Storage | Storage expansion |
| 26 | Deploying Virtual Machines in a Public Virtual Network | Public networking |
| 27 | Deploying Virtual Machines in a Private Virtual Network | Private networking |
| 28 | Troubleshooting Public Virtual Network Configurations | Debugging |
| 29 | Working with Azure Container Registry (ACR) | Container registry |
| 30 | Create Azure SQL Database | Managed databases |

---

### **Category 3: Application Deployment & Containers** (Days 31-40)

**Focus**: Web Apps, Load Balancers, VNet Peering, Containers

| Day | Project | Skills |
|-----|---------|--------|
| 31 | Deploying and Managing a Web Application | Application hosting |
| 32 | Synchronizing Containers Using the CLI | Container management |
| 33 | Integrating Virtual Machines with Application Load Balancer | Load balancing |
| 34 | Enabling Internet Connectivity for Virtual Machines | Outbound connectivity |
| 35 | Configuring Virtual Network Peering | VNet peering |
| 36 | Managing Storage Lifecycle in Azure | Lifecycle policies |
| 37 | Setting Up MySQL on a Virtual Machine in Azure | Database deployment |
| 38 | Running Containers on Azure Virtual Machines | Docker, containers |
| 39 | Deploying a Static Website Using Containers on Azure | Static hosting |
| 40 | Managing Secrets with Azure Key Vault | Secret management |

---

### **Category 4: Data & Integration Services** (Days 41-48)

**Focus**: Table Storage, Event Hub, AKS, Application Gateway

| Day | Project | Skills |
|-----|---------|--------|
| 41 | Working with Azure Table Storage | NoSQL storage |
| 42 | Backup and Delete Azure Storage Blob Container | Backup strategies |
| 43 | Configuring Azure VM with Application Gateway | Application Gateway |
| 44 | Integrating Azure Event Hub with Virtual Machines | Event streaming |
| 45 | Azure Kubernetes Service (AKS) Setup and Management | Kubernetes |
| 46 | EventHub to Blob Storage Integration Setup | Data pipelines |
| 47 | SQL Database Migration and Setup | Database migration |
| 48 | VM and ACR Integration for Storage | Integration patterns |

---

### **Category 5: Advanced Architecture** (Days 49-50)

**Focus**: Complex Integration, Production Deployments

| Day | Project | Skills |
|-----|---------|--------|
| 49 | VM Setup with Web Storage Integration | Full-stack integration |
| 50 | VM Setup and Configuration for Azure Application Gateway | Production architecture |

---

## 🛠️ Technologies & Skills

### Cloud Platforms
- **AWS**: EC2, S3, VPC, RDS, Lambda, ECS, EKS, CloudFormation
- **Azure**: Virtual Machines, VNet, Blob Storage, SQL Database, AKS, ARM Templates

### Core Competencies
✅ Virtual machine deployment and management  
✅ Network architecture and security  
✅ Storage solutions and data management  
✅ Identity and access management (IAM/RBAC)  
✅ Container orchestration (ECS, AKS)  
✅ Serverless computing (Lambda, Azure Functions)  
✅ Database administration (RDS, SQL Database)  
✅ Infrastructure as Code (CloudFormation, ARM Templates)  
✅ Load balancing and high availability  
✅ Monitoring and logging  
✅ Security best practices  
✅ Cost optimization  

### Tools & CLI
- AWS CLI
- Azure CLI
- Docker
- Kubernetes
- Git
- SSH
- Nginx

---

## 📊 Progress Tracker

### AWS Track
| Category | Days | Status |
|----------|------|--------|
| Core Services & Fundamentals | 1-20 | 🔄 In Progress |
| Networking & Advanced Compute | 21-30 | ⏳ Upcoming |
| Databases & Container Services | 31-40 | ⏳ Upcoming |
| Serverless & Automation | 41-48 | ⏳ Upcoming |
| Security & Advanced Topics | 49-50 | ⏳ Upcoming |

### Azure Track
| Category | Days | Status |
|----------|------|--------|
| Core Services & Fundamentals | 1-20 | ⏳ Upcoming |
| Networking & Advanced Compute | 21-30 | ⏳ Upcoming |
| Application Deployment & Containers | 31-40 | ⏳ Upcoming |
| Data & Integration Services | 41-48 | ⏳ Upcoming |
| Advanced Architecture | 49-50 | ⏳ Upcoming |

---

## 💡 Daily Workflow

Each day includes:
1. **Hands-on Lab**: Complete the assigned cloud task
2. **Documentation**: Save configuration files, scripts, or screenshots
3. **Notes**: Document key learnings and commands used
4. **Commit**: Push to GitHub with descriptive commit message

Example structure for each day:
```
day-XX-project-name/
├── README.md           # Project overview and objectives
├── screenshots/        # Console screenshots
├── configs/            # Configuration files
├── scripts/            # CLI commands or automation scripts
└── notes.md            # Key learnings and takeaways
```

---

## 🎓 Learning Outcomes

By completing this challenge, I will demonstrate:

**Multi-Cloud Expertise**
- Understand differences between AWS and Azure service models
- Deploy equivalent solutions across both platforms
- Make informed decisions about cloud provider selection

**Production-Ready Skills**
- Design secure, scalable cloud architectures
- Implement high availability and disaster recovery
- Follow security and compliance best practices
- Optimize costs and performance

**DevOps & Automation**
- Infrastructure as Code proficiency
- CI/CD pipeline concepts
- Container and serverless deployment
- Monitoring and observability

**Problem-Solving**
- Troubleshoot network connectivity issues
- Debug application deployment problems
- Optimize resource configurations

---

## 🏆 Certification Path

After completing 100 Days of Cloud, next steps include:

**AWS Certifications**
- [ ] AWS Certified Solutions Architect - Associate
- [ ] AWS Certified Developer - Associate
- [ ] AWS Certified SysOps Administrator - Associate

**Azure Certifications**
- [ ] Microsoft Azure Fundamentals (AZ-900)
- [ ] Microsoft Azure Administrator (AZ-104)
- [ ] Microsoft Azure Solutions Architect Expert (AZ-305)

---

## 📚 Resources

- [KodeKloud 100 Days of Cloud](https://kodekloud.com/100-days-of-cloud)
- [AWS Documentation](https://docs.aws.amazon.com)
- [Azure Documentation](https://docs.microsoft.com/azure)
- [AWS CLI Reference](https://docs.aws.amazon.com/cli)
- [Azure CLI Reference](https://docs.microsoft.com/cli/azure)

---

## 🤝 Connect

- **LinkedIn**: [Your LinkedIn Profile]
- **Portfolio**: [Your Portfolio Website]
- **Email**: [Your Email]
- **Twitter/X**: [Your Twitter Handle]

---

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

⭐ **Star this repository** if you find it helpful for your own cloud learning journey!

**Challenge Status**: 🔄 Active | Day 1/100  
**Last Updated**: January 25, 2026

---

## 🎯 Challenge Commitment

> "100 days of consistent cloud engineering practice across AWS and Azure. Building real skills, one day at a time."

**#100DaysOfCloud #AWS #Azure #CloudEngineering #KodeKloud**
