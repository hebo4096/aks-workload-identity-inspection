provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "this" {
  name = "aks-workload-identity-rg"
  location = var.location
}

# modules related to Azure Kubernetes Service (AKS)
module "aks" {
  source = "./modules/aks"

  rg_name = azurerm_resource_group.this.name
  location = var.location
}

# modules related to managed ID
module "managed_id" {
  source = "./modules/managed-id"

  rg_name = azurerm_resource_group.this.name
  location = var.location

  namespace = var.namespace
  service_account_name = var.service_account_name
  oidc_issuer_url = module.aks.oidc_issuer_url
}
