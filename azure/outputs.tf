# outputs used for installation of azure-cli helm release
output "client_id_for_helm" {
  value = module.managed_id.umi_client_id
}

output "namespace_for_helm" {
  value = var.namespace
}

output "service_account_name_for_helm" {
  value = var.service_account_name
}

output "resource_group" {
  value = azurerm_resource_group.this.name
}

output "aks_cluster_name" {
  value = module.aks.aks_cluster_name
}
