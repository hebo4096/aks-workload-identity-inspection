variable "client_id" {
  type        = string
  description = "set the value of 'client_id_for_helm'"
}

variable "namespace" {
  type        = string
  description = "set the value of 'namespace_for_helm'"
}

variable "service_account_name" {
  type        = string
  description = "set the value of 'service_account_name_for_helm'"
}

variable "kube_config" {
  type        = string
  default     = "~/.kube/config"
  description = "location of kubeconfig file. If you have custom location, change the default value"
}
