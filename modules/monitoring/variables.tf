
variable "enabled" {
  description = "Enable monitoring module"
  type        = bool
  default     = false
}

variable "namespace" {
  description = "Namespace for the monitoring resources"
  type        = string
  default     = "monitoring"
}

variable "chart_ersion" {
  description = "Version of the kube-prometheus-stack (https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack) chart to deploy"
  type        = string
  default     = "1.0.0"
}

variable "retention_days" {
    description = "Number of days to retain monitoring data"
    type        = number
    default     = 7
}

variable "persistence_size" {
    description = "Size of the persistent volume for monitoring data"
    type        = string
    default     = "10Gi"
}

variable "storage_class" {
    description = "Storage class for the persistent volume"
    type        = string
    default     = "standard"
    nullable    = true
}

variable "service_exposure" {
  description = "Service exposure type for monitoring services"
  type        = string
  default     = "ClusterIP"

  validation {
    condition     = contains(["ClusterIP", "private_ingress"], var.service_exposure)
    error_message = "service_exposure must be one of 'ClusterIP', 'private_ingress'."
  }
}

variable "disable_control_plan_scrapes" {
  description = "Disable scraping of control plane components (kube-apiserver, kube-controller-manager, kube-scheduler, etcd)"
  type        = bool
  default     = true
}

variable "grafana_editors" {
  description = "List of users to be granted Grafana Editor role"
  type        = list(string)
  default     = []
}
