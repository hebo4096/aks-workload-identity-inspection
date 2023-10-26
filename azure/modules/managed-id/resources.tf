resource "azurerm_user_assigned_identity" "azcli" {
  location = var.location
  name = "azcli-umi"
  resource_group_name = var.rg_name
}

resource "azurerm_federated_identity_credential" "azcli" {
  name = "azcli-umi-fi"
  resource_group_name = var.rg_name
  audience = ["api://AzureADTokenExchange"]
  issuer = var.oidc_issuer_url
  parent_id = azurerm_user_assigned_identity.azcli.id
  subject = "system:serviceaccount:${var.namespace}:${var.service_account_name}"
}
