# 🌐 Azure 3-Tier Infrastructure with Bicep

Deploy a **secure, production-ready 3-tier architecture** (Web, App, DB) in Azure using **Bicep**, Azure’s native Infrastructure as Code (IaC) language.

---

## 🎯 Project Overview

This project creates a **scalable, secure, and modular 3-tier network** infrastructure using Bicep — designed to reflect real-world enterprise environments.

It's ideal for:
- Cloud engineers learning Azure IaC
- Interview preparation
- GitHub portfolio showcase

---

## 📌 Goals

✅ Define and deploy infrastructure using **Azure Bicep**  
✅ Implement **3-tier architecture**: Web, App, and Database tiers  
✅ Use **subnet-level segmentation** for security and isolation  
✅ Apply **Network Security Groups (NSGs)** with custom rules  
✅ Build for **modular reusability** and **real-world practices**  

---

## 🧱 Architecture Overview

```
Azure Resource Group
└── Virtual Network (10.0.0.0/16)
    ├── Subnet: web-subnet (10.0.1.0/24) 🧭 NSG: Allow HTTP, HTTPS, SSH
    ├── Subnet: app-subnet (10.0.2.0/24)
    ├── Subnet: db-subnet (10.0.3.0/24)
    └── Subnet: bastion-subnet (10.0.4.0/24)
```

### 🔐 NSG Rules (attached to `nsg-web`)
- Allow inbound **HTTP (80)**
- Allow inbound **HTTPS (443)**
- Allow inbound **SSH (22)**

---

## 📁 Project Structure

```
azure-vnet-3tier-infra-bicep/
├── main.bicep         # Root deployment file
├── network.bicep      # Defines VNet and subnets
├── nsg.bicep          # Defines Network Security Groups
├── parameters.json    # Parameter values for deployment
└── README.md          # Project documentation (this file)
```

---

## 🚀 How to Deploy (once Azure subscription is ready)

```bash
az login
az account set --subscription "<your-subscription-id>"

az deployment group create   --resource-group <your-rg-name>   --template-file main.bicep   --parameters @parameters.json
```

---

## ✅ Skills Demonstrated

- Azure Networking (VNet, Subnets, NSGs)
- Infrastructure as Code with **Bicep**
- Modular IaC design
- GitHub portfolio readiness
- Interview-focused, real-world deployment

---

## 📌 Next Steps

- Add **NSGs per tier** (app, db)
- Add **route tables**, **Bastion host**, **Private endpoints**
- Deploy **VMs into each subnet**
- Extend into full app architecture with Azure services

---

## 🧑‍💼 Target Audience

This project is built for:
- Cloud Engineers (Entry to Mid-level)
- Students and career switchers
- Anyone preparing for Azure interviews

---

## 💬 Feedback & Collaboration

If you're learning cloud like me or have ideas to improve this, feel free to connect or contribute!
