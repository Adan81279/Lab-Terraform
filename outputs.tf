output "application_name" {
    value = local.suffix
}

output "unique_name" {
    value = local.unique_name
}

output "enable_monitoring" {
    description = "Indica si el monitoreo esta habilitado"
    value       = var.enable_monitoring
}

output "regions" {
    description = "Lista de regiones de despliegue"
    value       = var.regions
}

output "environment_tags" {
    description = "Etiquetas por entorno"
    value       = var.environment_tags
}

output "application_config" {
    description = "Configuracion de la aplicacion"
    value       = var.application_config
}

output "allowed_networks" {
    description = "Redes permitidas"
    value       = var.allowed_networks
}