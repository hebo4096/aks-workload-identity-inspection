resource "helm_release" "azure_cli" {
  name  = "azure-cli"
  chart = "${path.root}/helm-chart"

  set {
    name = "aksWorkloadIdentity.enabled"
    value = true
  }

  set {
    name = "aksWorkloadIdentity.clientId"
    value = var.client_id
  }

  set {
    name = "aksWorkloadIdentity.namespace"
    value = var.namespace
  }

  set {
    name = "aksWorkloadIdentity.serviceAccountName"
    value = var.service_account_name
  }
}
