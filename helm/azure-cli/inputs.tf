variable "client_id" {
  type        = string
  description = "client ID of Managed ID"
}

variable "namespace" {
  type        = string
  description = "namespace to manage workload identity related resources"
}

variable "service_account_name" {
  type        = string
  description = "serviceaccount to associate Pod with managed ID"
}
