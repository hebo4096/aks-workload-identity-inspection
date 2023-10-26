output "oidc_issuer_url" {
  value = azurerm_kubernetes_cluster.this.oidc_issuer_url
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.this.name
}
