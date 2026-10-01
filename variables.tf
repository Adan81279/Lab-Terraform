# Las variables son valores de entrada que permiten parametrear la infraestructura, evitando escribir valores fijos direntamente en el codigo.

variable "length" {
    description = "Length of the random string"
    type        = number
    default     = 5
}

variable "application_name" {
    description = "Nombre de la aplicacion"
    type        = string
    default     = "integradora"
}

variable "environment" {
    description = "Entorno de despliegue"
    type        = string
    default     = "dev"
}

# Otros tipos de variables pueden ser list, map, bool, etc.

variable "enable_monitoring" {
    description = "Habilitar o desabilitar el monitoreo"
    type        = bool
    default     = true
}

variable "regions" {
    description = "Lista de regiones donde se desplegara la infraestructura"
    type        = list(string)
    default     = ["us-east-1", "us-west-2"]
}

variable "environment_tags" {
    description = "Etiquetas especifics para cada entorno"
    type        = map(string)
    default     = {
        "dev"  = "Development"
        "prod" = "Production"
    }
}

variable "application_config" {
    description = "Configuración específica para la aplicación"
    type        = object({
        version      = string
        maintainer   = string
        dependencies = list(string)
    })
    default     = {
        version      = "1.0.0"
        maintainer   = "Jonh Doe"
        dependencies = ["dependency1", "dependency2"]
    }
}

variable "allowed_networks"{
    description = "Lista de redes permitida para acceder a la aplicacion"
    type = set(string)
    default = ["10.0.0.0/16",  "10.1.0.0/16"] 
}