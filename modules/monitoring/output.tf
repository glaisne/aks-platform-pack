output "namespace" {
    value = var.namespace
}

output "grafana_url" {
    value       = module.monitoring.grafana_url
    description = "URL to access Grafana"
    condition   = var.enabled
}

output "grafana_admin_secret_name" {
    value       = module.monitoring.grafana_admin_secret_name
    description = "Name of the secret containing Grafana admin credentials"
    condition   = var.enabled
}

