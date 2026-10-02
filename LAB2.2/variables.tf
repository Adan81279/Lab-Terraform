variable "project_name"{
    description = "The name of the project."
    type        = string

    validation {
        condition    = length(var.project_name) >= 5 && length(var.project_name) <= 20
        error_message = "project_name must not be empty."
    }
}


variable "environment" {
    description = "The environment for the deployment (e.g., dev, test, prod)."
    type        = string

    validation {
        condition = contains (["dev", "qa", "prod"], var.environment)
        error_message = "The environment must be one of: dev, qa, prod."
    }
}

variable "location" {
    description = "The Azure region where resources will be deployed."
    type        = string

    default     = "mexicocentral"
}

variable "vnet_address_space" {
    description = "The address space for the virtual network."
    type        = list(string)

    default = ["10.0.0.0/16"]
}

variable "tags" {
    description = "A map of tags to assign to resources."
    type        = map(string)

    default = { managed_by  = "terraform"}
}

variable "subscription_id" {
    description = "The Azure subscription ID."
    type        = string
    default = "231753ba-d042-4837-a1e1-10dbadb655da"
    sensitive = true
}
