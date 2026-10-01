# Version of Terraform required
# Provders required for this configuration   
# Version of the random provider required

terraform {
    required_providers {
        random = {
            source  = "hashicorp/random"
            version = "~> 3.0"
        }
    }
    required_version = ">= 1.0.0"
}