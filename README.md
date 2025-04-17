
# 🔐 Secure VPC Architecture with Bastion Host

[![AWS](https://img.shields.io/badge/AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/)
[![Terraform](https://img.shields.io/badge/Terraform-7B3F00?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

A secure, highly available, and auditable VPC setup in AWS with **public and private subnets**, a **bastion host**, **NAT instance**, **VPC flow logs**, and **CloudWatch monitoring** – all provisioned using **Terraform**.

## 🛠️ Project Overview

This project provisions a **secure and scalable VPC** infrastructure using **Infrastructure as Code (IaC)** with **Terraform**. The infrastructure will consist of the following components:

- **Public and private subnets** for segregating resources based on security requirements.
- A **Bastion Host** in the public subnet that provides secure SSH access to instances in the private subnet.
- A **NAT Instance** to provide outbound internet access for instances in the private subnet while maintaining their security by keeping them isolated from the public internet.
- **VPC Flow Logs** for capturing and storing information about the network traffic within the VPC, ensuring the infrastructure is auditable.
- **CloudWatch Monitoring** for observing performance metrics and setting up alarms to monitor resource utilization, making the infrastructure auditable and observable.

## 📝 Blog Post
For a detailed walkthrough and architecture explanation, check out my blog post on Medium:<br>
**👉 [Read the full blog here](https://medium.com/@zer0vuln/secure-aws-vpc-architecture-with-bastion-host-using-terraform-7704ead2abdb)**



## 🖼️ Architecture Diagram

The visual below illustrates the full architecture:

- **Public Subnets**: One per AZ, hosting Bastion Host (AZ1) and NAT Instance (AZ1)
- **Private Subnets**: One in each AZ; only the AZ1 subnet (`10.0.10.0/24`) has an EC2 instance
- **Private Subnet in AZ2** (`10.0.11.0/24`) is reserved for future use
- Arrows indicate connectivity paths (SSH, internet, internal routing)
- Color-coded components for quick reference

![Secure VPC Architecture Diagram](https://github.com/user-attachments/assets/52c36cda-9977-45c5-8afa-56eed1a2c279)

---

## ✨ Features

| 🔰 Feature                       | ✅ Description |
|-------------------------------|------------------------------------------------------------------|
| 🌐 **Custom VPC**             | VPC with CIDR block `10.0.0.0/16`, tailored for secure isolation |
| 🏢 **Multi-AZ Deployment**    | Uses **2 Availability Zones** for high availability               |
| 🌍 **Public Subnets**         | Two public subnets: `10.0.1.0/24` & `10.0.2.0/24` for gateway, NAT, and Bastion |
| 🔐 **Private Subnets**        | Two private subnets: `10.0.10.0/24` (with instance) and `10.0.11.0/24` (reserved) |
| 🧱 **Bastion Host**           | Jump box in public subnet for secure SSH access to private instances |
| 🚪 **NAT Instance**           | Allows private instances to access the internet without being exposed |
| 👨‍💻 **Private EC2 Instance** | Secure instance in `10.0.10.0/24`, accessed only through Bastion Host |
| 📄 **VPC Flow Logs**          | Captures IP traffic logs across the VPC for auditing and analysis |
| 📊 **CloudWatch Integration** | Monitors infrastructure health and activity with AWS CloudWatch |
| ⚙️ **Terraform IaC**          | Infrastructure as Code with Terraform for automation and consistency |
| ❌ **No RDS or Load Balancer**| Intentionally excluded to keep the architecture lean and secure |

---

## ⚙️ How to Replicate This Project

### 📦 Prerequisites

Ensure the following tools are installed and configured:

- ✅ [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- ✅ [Terraform](https://developer.hashicorp.com/terraform/downloads)
- ✅ AWS credentials configured via `~/.aws/credentials` or environment variables

### ⚙️ How to Deploy

1. **Clone the Repository**
   ```bash
   git clone https://github.com/virtualISP/Secure-VPC-Architecture-with-Bastion-Host.git
   cd Secure-VPC-Architecture-with-Bastion-Host
   ```

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Preview changes**
   ```bash
   terraform plan
   ```

4. **Apply the infrastructure**
   ```bash
   terraform apply
   ```

5. **Connect to Bastion Host**
   ```bash
   ssh -i /path/to/your-key.pem ec2-user@<bastion-public-ip>
   ```

6. **From Bastion to Private Instance**
   ```bash
   ssh -i /path/to/your-key.pem ec2-user@<private-instance-ip>
   ```

## 📬 License

This project is licensed under the [MIT](https://github.com/virtualISP/Secure-VPC-Architecture-with-Bastion-Host/blob/main/LICENSE) License.

## 🤝 Contributing

Contributions are welcome!
Feel free to fork, improve, and share! Please create a pull request or raise an issue to discuss any changes.

1. Fork the repository
2. Create a new feature branch (`git checkout -b feature/feature-name`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/feature-name`)
5. Create a new Pull Request
---
Designed by ***VirtualISP*** for secure cloud infrastructure, visibility, and modularity.
