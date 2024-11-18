# DevOps-K8s-Azure

![Kubernetes on Azure](https://miro.medium.com/max/2400/1*fTQmmk-7lQUUC41cSzmj_w.png)

This project aims to implement and automate a Kubernetes cluster (AKS) on Azure using infrastructure as code tools, CI/CD, and containers. It serves as a practical example of how to orchestrate an efficient deployment of cloud resources with Terraform, GitHub Actions, and Kubernetes for a robust DevOps environment.

## ⚡ Project Overview

This repository contains the necessary code and configuration to deploy an AKS cluster and deploy applications on it. It uses **Terraform** to create the infrastructure on Azure and **GitHub Actions** to set up CI/CD automation.

### Technologies Used

- **Terraform**: Used to define and manage Azure infrastructure.
- **Azure Kubernetes Service (AKS)**: Cloud container orchestrator to run applications.
- **GitHub Actions**: CI/CD automation for infrastructure and application deployments.
- **Docker**: Containerizes applications and publishes them to a registry.
- **Azure Container Registry (ACR)**: Container registry to store and serve Docker images.

## 🛠‍️ Project Structure

```
Gitlab-TF-AKS
├── Enviroments
│   ├── dev
│   │   ├── 001_resource_group.tf
│   │   ├── 002_vnet.tf
│   │   ├── 003_aks_cluster.tf
│   │   ├── 004_registry.tf
│   │   ├── provider.tf
│   │   ├── vars.tf
│   │   └── kubernetes
│   │       ├── deploy-ingress-nginx.yaml
│   │       ├── namespace.yaml
│   │       ├── svc_loadbalancer.yaml
│   │       └── web_deployment.yaml
│   ├── qa
│   └── prod
├── modules
│   ├── aks_cluster
│   ├── aks_node_pools
│   ├── networking
│   ├── registry
│   └── rg
└── .github
    └── workflows
        ├── terraform.yml
        └── kubernetes_deploy.yml
```

- **Environments**: Contains Terraform configurations for different environments, such as development, QA, and production.
- **Modules**: Defines reusable Terraform modules to simplify infrastructure management.
- **.github/workflows**: Contains GitHub Actions workflows for deployment automation.

## 🏦 Deployed Infrastructure

- **Resource Group** to manage all Azure resources.
- **Virtual Network (VNet)** with separate subnets for securing the infrastructure.
- **Kubernetes Cluster (AKS)** with autoscaling and identity management.
- **Azure Container Registry (ACR)** to store Docker images that will be deployed to the AKS cluster.

## ⚙️ CI/CD Pipelines

### Terraform Pipeline

- Located in the `.github/workflows/terraform.yml` file.
- **Stages**:
  - **Plan**: Generates an execution plan to validate changes to the infrastructure.
  - **Apply**: Applies approved changes to the AKS cluster.

### Kubernetes Deployment Pipeline

- Defined in `.github/workflows/kubernetes_deploy.yml`.
- **Stages**:
  - **Deploy**: Deploys Kubernetes manifests to launch the application on the AKS cluster.

## 🌐 Deploying the Infrastructure

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/marcellofdz/DevOps-K8s-Azure.git
   cd DevOps-K8s-Azure
   ```
2. **Set Environment Variables**:
   Environment variables such as `ARM_CLIENT_ID`, `ARM_CLIENT_SECRET`, etc., should be configured in GitHub as secrets.
3. **Run the Terraform Pipeline**:
   Push to the repository to trigger the Terraform workflow in GitHub Actions.

## 🚀 Deploy Applications to AKS

Once the cluster is up and running:
1. **Modify and Push Kubernetes Manifests**:
   You can modify the manifests in `Enviroments/dev/kubernetes`.
2. **Run the Kubernetes Deployment Pipeline**:
   Perform a `git push` to trigger the deployment pipeline in AKS.

## ⭐ Future Improvements

- **Implement an Ingress Controller** to improve traffic management to the deployed applications.
- **Add Auto-Scaling** to AKS nodes for more efficient resource handling.
- **Integrate Helm** to deploy more complex applications.

## 📈 Contributions

Contributions are welcome. If you want to contribute, please **fork** the repository and create a **pull request** with your improvements.

## 🌟 Acknowledgments

Thanks to the entire DevOps community for their guides and documentation that made this project possible.

## ℹ️ License

This project is licensed under the MIT License. See the LICENSE file for more details.

