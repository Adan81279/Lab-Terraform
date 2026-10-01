# Las variables son valores de entrada que permiten parametrear la infraestructura, evitando escribir valores fijos direntamente en el codigo.



variable "length" {
    description = "Length of the random string"
    type        = number
    default     = 30
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