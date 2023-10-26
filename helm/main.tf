provider "helm" {
   kubernetes {
    config_path = var.kube_config
  }
}

module "azure_cli" {
  source = "./azure-cli"

  client_id = var.client_id
  namespace = var.namespace
  service_account_name = var.service_account_name

}
