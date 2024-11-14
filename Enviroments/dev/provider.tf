terraform { 
  cloud { 
    organization = "DevOpsRD" 
    workspaces { 
      name = "devops-HCP" 
    } 
  } 
}
provider "azurerm" {
  features {}
  subscription_id = "ac11afc9-b35e-44d2-b352-b48d48a51eb6"

  client_id       = var.ARM_CLIENT_ID
  client_secret   = var.ARM_CLIENT_SECRET
  tenant_id       = var.ARM_TENANT_ID

}