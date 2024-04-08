# three-tier-architecture-with-terraform
## Deploy a scalable and resilient three-tier architecture on AWS using Terraform.


## 🚀 Project Overview
This project enables the deployment of a highly available, scalable, and secure multi-tier architecture on Amazon Web Services (AWS) using Terraform. The architecture comprises three tiers:

- **Web Tier**: This tier handles incoming user requests and can be horizontally scaled for increased capacity. It typically includes web servers and a load balancer for traffic distribution.

- **Application Tier**: Application servers execute business logic and interact with the database tier. They are horizontally scalable to meet demand.

- **Database Tier**: This tier stores and manages application data. Amazon RDS is utilized for a managed database service.


## 📌 Architecture Diagram
![multi-tier-architecture](https://github.com/shubhamksawant/three-tier-architecture-with-terraform/blob/main/three-tier-architecture-with-terraform.png)


## ✨ Features

- **High Availability**: Fault tolerance and redundancy are built into the architecture.
- **Scalability**: The web and application tiers can be easily scaled to handle varying workloads.
- **Security**: Security groups and network ACLs ensure a secure environment.

## 🌟 Web Tier
The Web Tier serves as the entry point for incoming user requests. It typically includes:

- **Load Balancer**:  Distributes traffic across multiple web servers.
- **Auto Scaling**: Automatically adjusts the number of web servers based on traffic.
- **Security Groups**: Controls incoming and outgoing traffic to the web servers.


### Web Tier Configuration

- [Launch Template Configuration](launch-template-web.tf)
- [Load Balancer Configuration](alb-web.tf)
- [Auto Scaling Configuration](asg-web.tf)
- [Security Group Configuration of Load balancer](alb-web-sg.tf)
- [Security Group Configuration of Auto Scaling Group](asg-web-sg.tf)

## 🚀 Application Tier

The Application Tier hosts application servers responsible for executing business logic and interacting with the database tier. Key components include:

- **Application Servers**:  Execute application code and can be horizontally scaled.
- **Load Balancer**: Distributes traffic to the application servers.
- **Auto Scaling**: Automatically adjusts the number of web servers based on traffic.
- **Security Groups**:  Controls incoming and outgoing traffic to the application servers.


### Application Tier Configuration

- [Launch Template Configuration](launch-template-app.tf)
- [Load Balancer Configuration](alb-app.tf)
- [Auto Scaling Configuration](asg-app.tf)
- [Security Group Configuration of Load balancer](alb-app-sg.tf)
- [Security Group Configuration of Auto Scaling Group](asg-app-sg.tf)

## 💽 Database Tier 

The Database Tier stores and manages application data using Amazon RDS, a managed database service. Key components include:

- **Amazon RDS**: Managed database service for MySQL/PostgreSQL/SQL Server databases.
- **Security Groups**:  Control incoming and outgoing traffic to the database.


### Database Tier Configuration

- [DB Subnet group Configuration](db-subnet-group.tf)
- [Amazon RDS Configuration](rds.tf)
- [Security Group Configuration](db-sg.tf)


## 🔧 Terraform Configuration

The Terraform configuration organizes resources to create necessary AWS infrastructure components, including:

- Virtual Private Cloud (VPC)
- Subnets and Route Tables
- Security Groups and Network ACLs
- Load Balancers
- Auto Scaling Groups
- RDS Database Instances

## 🚀 Deployment

Follow these steps to deploy the architecture:

1. Clone the repository:
   git clone repo
2. Make changes as per your needs (backend.tf, terraform.tfvars,secrets.tfvars and other as per your configuration requirement)
3. Initialize Terraform and apply the configuration:
   ```
   terraform init
   ```
4. Review the changes.
  ```
   terraform plan -var-file="secret.tfvars"
   ```
5. then use apply command to deploy 
  ```
   terraform apply -var-file="secret.tfvars"
   ```
