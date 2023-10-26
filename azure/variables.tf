variable "location" {
  type = string
  description = "azure region to deploy resources (ex. 'japaneast', 'eastus')"
}

variable "namespace" {
  type = string
  description = "namespace to create serviceaccount resource on k8s (ex. 'azcli')"
}

variable "service_account_name" {
  type = string
  description = "name of ServiceAccount for Kubernetes (ex. 'azcli-sa')"
}
